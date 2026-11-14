// Family icon of each card type: every card whose types contain the key gets
// that icon in the middle of its back and, small, in the bottom-left corner of
// its front. Files live in art/icons/ (see art/README.md and art/icons/CREDITS.md).
// When a card has several matching types, the most specific one (the last in
// its type list) wins, so a pool such as Thrill of the Hunt can later get its
// own icon while the rest of the class keeps the class icon.
#let family_icons = (
  "Goblin": "goblin.svg",
)

// Family icons are black SVGs printed in this gray to save ink.
#let icon_gray = "#999999"
