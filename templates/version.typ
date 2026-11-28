// Version date of a document: the day its printed text last changed, written small at its
// bottom left (year-month-day), so that of two printed copies of the same card, sheet or page,
// the one with the later date is the one to keep.
//
// The dates live in /versions.json, written by tools/export_cards.py: at each export, the text
// of every document is compared with the one stored there, and the date becomes today's only
// when it changed. Never edit the dates by hand.
//
// Keys: a card's name; "Class sheet: <class>"; "Rules: <page>"; "Hero sheet".

#let versions = json("/versions.json")

// The date of a document, or none if it was never exported.
#let version_date(key) = versions.at(key, default: (:)).at("date", default: none)

// The date as printed: small, gray, no letter spacing (so it reads back as one word).
#let version_stamp(key, size: 5pt) = {
  let d = version_date(key)
  if d != none { text(size: size, fill: luma(105), tracking: 0pt, hyphenate: false, d) }
}
