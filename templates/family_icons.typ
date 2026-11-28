// Family icon of each card type: every card whose types contain the key gets
// that icon, large in the middle of its back and small at the bottom of its
// front. Files live in art/icons/ (see
// guides/art.txt and art/icons/CREDITS.md).
// When a card has several matching types, the most specific one (the last in
// its type list) wins, so a pool such as Thrill of the Hunt can later get its
// own icon while the rest of the class keeps the class icon.
#let family_icons = (
  "Goblin": "creatures/goblin.svg",
  "Undead": "creatures/undead.svg",
  "Fire": "spells/fire.svg",
  "Ice": "spells/ice.svg",
  "Lightning": "spells/lightning.svg",
  "Wind": "spells/wind.svg",
  "Radiant": "spells/radiant.svg",
  "Necrotic": "spells/necrotic.svg",
  "Berserker": "class/berserker.svg",
  "Cheat": "class/cheat.svg",
  "Hunter": "class/hunter.svg",
  "Mage": "class/mage.svg",
  "Shepherd": "class/shepherd.svg",
  "Shadowmancer": "class/shadowmancer.svg",
  "Commander": "class/commander.svg",
  "Oathsworn": "class/oathsworn.svg",
  "Songweaver": "class/songweaver.svg",
  "Stormshifter": "class/stormshifter.svg",
  "Zephyr": "class/zephyr.svg",
  "Combat": "actions/combat.svg",
  "Ancestry": "ancestries/ancestry.svg",
  "Background": "backgrounds/background.svg",
  "Magic": "items/magic.svg",
  "Melee": "melee.svg",
  "Ranged": "ranged.svg",
)

// Family icons are black SVGs printed in this gray to save ink.
#let icon_gray = "#999999"
