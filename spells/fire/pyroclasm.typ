#import "../../global.typ": *

#let spell_data = (
    name: "Pyroclasm",
    type: (
      "Spell",
      "Fire",
      "Tier 4",
      "AoE",
    ),
    cost: (
      "2 Action",
      "4 Mana",
    ),
    reach: "3",
    effect: "Others within Reach take 2d20+10 damage (ignoring armor) on a failed DEX save. Half damage on save. Smoldering creatures fail.",
    upcast: "+1 Reach, +2 damage.",
)

#let pyroclasm = creat_spell(spell_data)