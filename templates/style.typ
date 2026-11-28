#import "/templates/site_marks.typ": hotspot, plain

#let reminder_color = rgb("#666666")
// A keyword or condition in rules text. On the website, hovering it shows its definition.
#let keyword_style(body) = hotspot("keyword", plain(body), text(fill: reminder_color, weight: "bold")[#body])
// Name of another card mentioned in rules text (#card_ref in game/terms.typ).
#let card_ref_style(body) = emph(body)
