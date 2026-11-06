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
      actions(2),
      mana(4),
    ),
    reach: "3",
    effect: [Others within Reach take 2d20+10 damage on a failed #DEX save. Half damage on save. #kw_smoldering creatures fail.],
    upcast: [Advantage 1, +1 Reach.],
    reminder: (conditions.smoldering,),
)

#let pyroclasm = creat_spell(spell_data)