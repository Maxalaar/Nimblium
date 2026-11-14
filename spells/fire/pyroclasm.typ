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
    damage: "2d20+10",
    effect: [Each other creature within Reach makes a #DEX save. If it fails, it takes this spell's damage. If it succeeds, it takes half. A #kw_smoldering creature automatically fails.],
    upcast: [#kw_advantage 1, +1 Reach.],
    reminder: (conditions.smoldering, keywords.advantage),
)

#let pyroclasm = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
