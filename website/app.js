// Nimblium website: browse, read and select the cards and pages of the game.
// Data: window.NIMBLIUM (data/nimblium.js, written by tools/export_cards.py):
//   cards: {id, name, types, section, kind, date, text, order, images, hotspots}
//   docs:  {id, name, section, date, text, order, pdf, images}
//   definitions: {keyword or condition: its definition}
// Hover zones are fractions of the card (x, y, w, h), laid over its image.

"use strict";

const DATA = window.NIMBLIUM;
const items = [
  ...DATA.cards.map(c => ({ ...c, type: "card" })),
  ...DATA.docs.map(d => ({ ...d, type: "doc" })),
].sort((a, b) => a.order - b.order);
const byId = new Map(items.map(i => [i.id, i]));
const cardByName = new Map(DATA.cards.map(c => [c.name, byId.get(c.id)]));

const $ = id => document.getElementById(id);
const el = (tag, props = {}, ...children) => {
  const e = Object.assign(document.createElement(tag), props);
  for (const c of children) if (c != null) e.append(c);
  return e;
};

const state = { path: [], query: "", since: "" };

// ---------------------------------------------------------------------------------------------
// Selection, kept in the browser between visits

const STORE = "nimblium.selection";
let selection = [];
try { selection = JSON.parse(localStorage.getItem(STORE) || "[]").filter(s => byId.has(s.id)); } catch { selection = []; }
const saveSelection = () => { try { localStorage.setItem(STORE, JSON.stringify(selection)); } catch {} };
const picked = id => selection.find(s => s.id === id);

function toggle(id) {
  if (picked(id)) selection = selection.filter(s => s.id !== id);
  else selection.push({ id, copies: 1 });
  saveSelection();
  renderSelection();
  refreshMarks();
}

// ---------------------------------------------------------------------------------------------
// A card image with its hover zones; a page image

function cardView(item, page = 0) {
  const box = el("div", { className: "card" });
  box.append(el("img", { src: item.images[page], alt: item.name, loading: "lazy", draggable: false }));
  for (const z of (item.hotspots && item.hotspots[page]) || []) {
    const target = z.kind === "card" ? cardByName.get(z.key) : null;
    if (z.kind === "keyword" && !DATA.definitions[z.key]) continue;
    if (z.kind === "card" && !target) continue;
    const pad = 0.004;
    const zone = el("span", { className: "zone" + (target ? " card-ref" : "") });
    Object.assign(zone.style, {
      left: `${(z.x - pad) * 100}%`, top: `${(z.y - pad) * 100}%`,
      width: `${(Math.min(z.w, 1 - z.x) + 2 * pad) * 100}%`, height: `${(z.h + 2 * pad) * 100}%`,
    });
    zone.addEventListener("mouseenter", ev => showTip(ev, z, target));
    zone.addEventListener("mousemove", moveTip);
    zone.addEventListener("mouseleave", hideTip);
    if (target) zone.addEventListener("click", ev => { ev.stopPropagation(); hideTip(); openViewer(target); });
    box.append(zone);
  }
  return box;
}

// ---------------------------------------------------------------------------------------------
// Bubble: a definition, or the card named

const tip = $("tip");

function showTip(ev, zone, target) {
  tip.replaceChildren();
  if (target) {
    tip.className = "tip preview";
    tip.append(el("img", { src: target.images[0], alt: target.name }));
  } else {
    tip.className = "tip";
    tip.append(el("b", { textContent: zone.key }), ". ", DATA.definitions[zone.key]);
  }
  tip.hidden = false;
  moveTip(ev);
}

function moveTip(ev) {
  const gap = 16, w = tip.offsetWidth, h = tip.offsetHeight;
  let x = ev.clientX + gap, y = ev.clientY + gap;
  if (x + w > innerWidth - 8) x = ev.clientX - gap - w;
  if (y + h > innerHeight - 8) y = Math.max(8, innerHeight - 8 - h);
  tip.style.left = `${Math.max(8, x)}px`;
  tip.style.top = `${y}px`;
}

const hideTip = () => { tip.hidden = true; };

// ---------------------------------------------------------------------------------------------
// Section tree

function buildTree() {
  const root = { children: new Map(), count: 0, path: [] };
  for (const item of items) {
    let node = root;
    root.count++;
    item.section.forEach((title, i) => {
      if (!node.children.has(title)) node.children.set(title, { children: new Map(), count: 0, path: item.section.slice(0, i + 1) });
      node = node.children.get(title);
      node.count++;
    });
  }
  const list = (node, depth) => {
    const ul = el("ul");
    for (const [title, child] of node.children) {
      const li = el("li");
      li.dataset.path = JSON.stringify(child.path);
      const button = el("button", { className: "node", type: "button" },
        el("span", { textContent: title }), el("span", { className: "count", textContent: child.count }));
      button.addEventListener("click", () => { state.path = child.path; render(); });
      li.append(button);
      if (child.children.size) li.append(list(child, depth + 1));
      ul.append(li);
    }
    return ul;
  };
  const tree = $("tree");
  const all = el("li", {}, el("button", { className: "node", type: "button" },
    el("span", { textContent: "Everything" }), el("span", { className: "count", textContent: root.count })));
  all.dataset.path = "[]";
  all.firstChild.addEventListener("click", () => { state.path = []; render(); });
  tree.append(all, ...list(root, 0).children);
}

function refreshTree() {
  const current = JSON.stringify(state.path);
  for (const li of $("tree").querySelectorAll("li")) {
    const path = JSON.parse(li.dataset.path);
    const inside = path.length <= state.path.length && path.every((t, i) => t === state.path[i]);
    li.classList.toggle("open", inside);
    li.firstChild.classList.toggle("active", li.dataset.path === current);
  }
}

// ---------------------------------------------------------------------------------------------
// Grid

function shown() {
  const words = state.query.toLowerCase().split(/\s+/).filter(Boolean);
  return items.filter(item => {
    if (!state.path.every((t, i) => item.section[i] === t)) return false;
    if (state.since && !(item.date && item.date >= state.since)) return false;
    if (!words.length) return true;
    const hay = [item.name, ...(item.types || []), ...item.section, item.kind || "", item.text].join(" ").toLowerCase();
    return words.every(w => hay.includes(w));
  });
}

function tile(item) {
  const box = el("div", { className: "tile " + item.type });
  box.dataset.id = item.id;
  const face = el("div", { className: "face", title: item.type === "doc" ? item.name : "" });
  if (item.type === "card") face.append(cardView(item, 0));
  else face.append(el("img", { src: item.images[0], alt: item.name, loading: "lazy" }));
  face.addEventListener("click", () => openViewer(item));
  const add = el("button", { className: "add", type: "button", title: "Add to the selection" });
  add.addEventListener("click", ev => { ev.stopPropagation(); toggle(item.id); });
  box.append(face, add);
  return box;
}

function render() {
  const list = shown();
  $("grid").replaceChildren(...list.map(tile));
  $("empty").hidden = list.length > 0;
  $("crumb").textContent = (state.path.length ? state.path.join(" · ") : "Everything") + ` · ${list.length}`;
  refreshTree();
  refreshMarks();
}

function refreshMarks() {
  for (const t of $("grid").children) {
    const on = !!picked(t.dataset.id);
    const add = t.querySelector(".add");
    add.classList.toggle("on", on);
    add.textContent = on ? "✓" : "+";
  }
  if (!$("viewer").hidden && viewed) renderViewerFoot();
}

// ---------------------------------------------------------------------------------------------
// Selection panel

function renderSelection() {
  const ol = $("picked");
  ol.replaceChildren();
  let total = 0;
  selection.forEach((s, index) => {
    const item = byId.get(s.id);
    total += s.copies;
    const li = el("li", { draggable: true });
    li.dataset.index = index;
    const name = el("span", { className: "name", textContent: item.name, title: item.section.join(" · ") });
    name.addEventListener("click", () => openViewer(item));
    const minus = el("button", { type: "button", textContent: "−", title: "One copy less" });
    const plus = el("button", { type: "button", textContent: "+", title: "One copy more" });
    minus.addEventListener("click", () => { s.copies = Math.max(1, s.copies - 1); saveSelection(); renderSelection(); });
    plus.addEventListener("click", () => { s.copies++; saveSelection(); renderSelection(); });
    const remove = el("button", { className: "remove", type: "button", textContent: "×", title: "Remove" });
    remove.addEventListener("click", () => toggle(s.id));
    li.append(el("span", { className: "grip", textContent: "⋮⋮" }), name,
      el("span", { className: "copies" }, minus, el("span", { textContent: `×${s.copies}` }), plus), remove);
    li.addEventListener("dragstart", () => li.classList.add("dragging"));
    li.addEventListener("dragend", () => li.classList.remove("dragging"));
    li.addEventListener("dragover", ev => ev.preventDefault());
    li.addEventListener("drop", ev => {
      ev.preventDefault();
      const from = Number(ol.querySelector(".dragging")?.dataset.index);
      if (Number.isNaN(from) || from === index) return;
      const [moved] = selection.splice(from, 1);
      selection.splice(index, 0, moved);
      saveSelection();
      renderSelection();
    });
    ol.append(li);
  });
  $("selection-count").textContent = selection.length ? `· ${total}` : "";
  $("selection-hint").hidden = selection.length > 0;
}

// ---------------------------------------------------------------------------------------------
// Viewer

let viewed = null;

function openViewer(item) {
  viewed = item;
  hideTip();
  $("viewer-crumb").textContent = item.section.join(" · ") + (item.kind && item.kind !== item.section.at(-1) ? ` · ${item.kind}` : "");
  $("viewer-title").textContent = item.name;
  const body = $("viewer-body");
  body.className = "viewer-body" + (item.type === "doc" ? " pages" : "");
  body.replaceChildren(...item.images.map((src, i) =>
    item.type === "card" ? cardView(item, i) : el("img", { src, alt: `${item.name} ${i + 1}` })));
  body.scrollTop = 0;
  // The box's width comes from what it shows, never from the length of its title.
  const cards = item.images.length;
  $("viewer-box").style.width = item.type === "doc" ? "860px" : `${cards * 380 + (cards - 1) * 16 + 36}px`;
  renderViewerFoot();
  $("viewer").hidden = false;
  history.replaceState(null, "", `#${item.type}=${encodeURIComponent(item.id)}`);
}

function renderViewerFoot() {
  const foot = $("viewer-foot");
  foot.replaceChildren();
  if (viewed.date) foot.append(el("span", { textContent: `Version ${viewed.date}` }));
  if (viewed.pdf) foot.append(el("a", { href: viewed.pdf, target: "_blank", textContent: "Open the PDF" }));
  const add = el("button", { className: "primary", type: "button",
    textContent: picked(viewed.id) ? "Remove from the selection" : "Add to the selection" });
  add.addEventListener("click", () => toggle(viewed.id));
  foot.append(add);
}

function closeViewer() {
  $("viewer").hidden = true;
  viewed = null;
  hideTip();
  history.replaceState(null, "", location.pathname + location.search);
}

// ---------------------------------------------------------------------------------------------
// Start

$("game-date").textContent = DATA.date ? `Version ${DATA.date}` : "";

// Size of the cards in the grid, kept in the browser.
const SIZES = [180, 220, 280, 340, 420, 520];
const SIZE_STORE = "nimblium.size";
let size = 2;
try {
  const saved = localStorage.getItem(SIZE_STORE);
  if (saved !== null && SIZES[Number(saved)]) size = Number(saved);
} catch {}
function applySize() {
  document.documentElement.style.setProperty("--card-w", `${SIZES[size]}px`);
  $("smaller").disabled = size === 0;
  $("bigger").disabled = size === SIZES.length - 1;
  try { localStorage.setItem(SIZE_STORE, String(size)); } catch {}
}
$("smaller").addEventListener("click", () => { size = Math.max(0, size - 1); applySize(); });
$("bigger").addEventListener("click", () => { size = Math.min(SIZES.length - 1, size + 1); applySize(); });
applySize();

buildTree();
renderSelection();
render();

let typing;
$("search").addEventListener("input", ev => {
  clearTimeout(typing);
  typing = setTimeout(() => { state.query = ev.target.value; render(); }, 120);
});
$("since").addEventListener("change", ev => { state.since = ev.target.value; render(); });
$("since-clear").addEventListener("click", () => { $("since").value = ""; state.since = ""; render(); });
$("add-shown").addEventListener("click", () => {
  for (const item of shown()) if (!picked(item.id)) selection.push({ id: item.id, copies: 1 });
  saveSelection(); renderSelection(); refreshMarks();
});
$("clear-selection").addEventListener("click", () => { selection = []; saveSelection(); renderSelection(); refreshMarks(); });
$("viewer-close").addEventListener("click", closeViewer);
$("viewer").addEventListener("click", ev => { if (ev.target === $("viewer")) closeViewer(); });
addEventListener("keydown", ev => { if (ev.key === "Escape" && !$("viewer").hidden) closeViewer(); });

// A link to a card or a page: #card=<id> or #doc=<id>.
const linked = location.hash.match(/^#(?:card|doc)=(.+)$/);
if (linked && byId.has(decodeURIComponent(linked[1]))) openViewer(byId.get(decodeURIComponent(linked[1])));
