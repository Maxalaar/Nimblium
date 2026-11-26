// Capsules shared by ability and spell cards.
// Sizes are relative to the rules text (8pt -> 6pt) so they shrink with it.

// Capsule labels are written like the outlined ones: a capital on the first word only
// ("Passive", "High levels", "Upcast").
#let sentence_case(label) = if type(label) == str and label.len() > 0 {
  upper(label.first()) + lower(label.slice(label.first().len()))
} else { label }

#let dark_badge(label, color: rgb("#2e2e2e")) = box(
  fill: color,
  radius: 0.25em,
  inset: (x: 0.375em, y: 0.19em),
  baseline: 10%,
)[#text(size: 0.75em, weight: "bold", fill: white)[#sentence_case(label)]]

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
#let high_levels(body) = [#dark_badge("High levels")\ #body]
