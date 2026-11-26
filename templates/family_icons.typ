// Family icon of each card type: every card whose types contain the key gets
// that icon, large in the middle of its back and small at the bottom of its
// front. Files live in art/icons/ (see
// guides/art.txt and art/icons/CREDITS.md).
// When a card has several matching types, the most specific one (the last in
// its type list) wins, so a pool such as Thrill of the Hunt can later get its
// own icon while the rest of the class keeps the class icon.
#let family_icons = (
  "Goblin": "goblin.svg",
  "Undead": "undead.svg",
  "Fire": "fire.svg",
  "Ice": "ice.svg",
  "Lightning": "lightning.svg",
  "Wind": "wind.svg",
  "Radiant": "radiant.svg",
  "Necrotic": "necrotic.svg",
  "Berserker": "berserker.svg",
  "Cheat": "cheat.svg",
  "Hunter": "hunter.svg",
  "Mage": "mage.svg",
  "Shepherd": "shepherd.svg",
  "Shadowmancer": "shadowmancer.svg",
  "Commander": "commander.svg",
  "Oathsworn": "oathsworn.svg",
  "Songweaver": "songweaver.svg",
  "Stormshifter": "stormshifter.svg",
  "Zephyr": "zephyr.svg",
  "Combat": "combat.svg",
  "Ancestry": "ancestry.svg",
  "Magic": "magic.svg",
  "Melee": "melee.svg",
  "Ranged": "ranged.svg",
)

// Family icons are black SVGs printed in this gray to save ink.
#let icon_gray = "#999999"
