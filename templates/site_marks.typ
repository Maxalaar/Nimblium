// Hover zones for the website (tools/export_cards.py, export_site): when compiled with
// --input hotspots=true, every keyword, condition and card name in a card's text leaves an
// invisible marker with its place on the page, so the site can show a definition or the other
// card when the mouse is over it. Otherwise nothing is added, and the layout never changes.

#let site_hotspots = sys.inputs.at("hotspots", default: "false") == "true"

// The plain text of some content ("Difficult Terrain"), for keys and search.
#let plain(c) = {
  if c == none { return "" }
  if type(c) == str { return c }
  if type(c) != content { return str(c) }
  if c.func() == [ ].func() { return " " }
  if c.func() == smartquote { return if c.double { "\"" } else { "’" } }
  if c.func() == linebreak or c.func() == parbreak { return " " }
  if c.has("text") { return if type(c.text) == str { c.text } else { plain(c.text) } }
  if c.has("children") { return c.children.map(plain).join("") }
  if c.has("body") { return plain(c.body) }
  if c.has("child") { return plain(c.child) }
  ""
}

// `body` as it is, after an invisible marker of its place and size (in mm, from the top left
// of the page): kind "keyword" (key: the word shown) or "card" (key: the card's name).
#let hotspot(kind, key, body) = if site_hotspots {
  context {
    let p = here().position()
    let m = measure(body)
    [#metadata((kind: kind, key: key, page: p.page, x: p.x.mm(), y: p.y.mm() - m.height.mm(),
      w: m.width.mm(), h: m.height.mm()))<hotspot>]
  }
  body
} else { body }
