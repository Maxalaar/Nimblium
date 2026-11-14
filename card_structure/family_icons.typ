// Family icon of each card type: every card whose types contain the key gets
// that icon in the middle of its back. Files live in art/icons/ (see
// nimblium_documents/art.txt and art/icons/CREDITS.md).
// When a card has several matching types, the most specific one (the last in
// its type list) wins, so a pool such as Thrill of the Hunt can later get its
// own icon while the rest of the class keeps the class icon.
#let family_icons = (
  "Goblin": "goblin.svg",
  "Undead": "undead.svg",
)

// Family icons are black SVGs printed in this gray to save ink.
#let icon_gray = "#999999"
