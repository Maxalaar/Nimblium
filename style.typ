#let reminder_color = rgb("#666666")
#let keyword_style(body) = text(fill: reminder_color, weight: "bold")[#body]
// Name of another card mentioned in rules text (#card_ref in terms.typ).
#let card_ref_style(body) = emph(body)
