// Capsules shared by ability and spell cards.
// Sizes are relative to the rules text (8pt -> 6pt) so they shrink with it.

#let dark_badge(label, color: rgb("#2e2e2e")) = box(
  fill: color,
  radius: 0.25em,
  inset: (x: 0.375em, y: 0.19em),
  baseline: 10%,
)[#text(size: 0.75em, weight: "bold", fill: white)[#upper(label)]]

#let tag_badge(label) = box(
  fill: white,
  stroke: 0.5pt + black,
  radius: 0.25em,
  inset: (x: 0.375em, y: 0.19em),
  baseline: 10%,
)[#text(size: 0.75em, weight: "bold", fill: black)[#label]]

// What changes with your level: a dark HIGH LEVELS capsule, then one `*Level X:*` line per
// step, each giving the new value (it replaces the one before). Shared by spells, abilities,
// mechanics and items.
#let high_levels(body) = [#dark_badge("High Levels")\ #body]
