// Capsules shared by ability and spell cards.

#let dark_badge(label, color: rgb("#2e2e2e")) = box(
  fill: color,
  radius: 2pt,
  inset: (x: 3pt, y: 1.5pt),
  baseline: 10%,
)[#text(size: 6pt, weight: "bold", fill: white)[#upper(label)]]

#let tag_badge(label) = box(
  fill: white,
  stroke: 0.5pt + black,
  radius: 2pt,
  inset: (x: 3pt, y: 1.5pt),
  baseline: 10%,
)[#text(size: 6pt, weight: "bold", fill: black)[#label]]
