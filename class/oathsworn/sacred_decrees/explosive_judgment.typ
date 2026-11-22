#import "../../../global.typ": *

#let ability_data = (
    name: "Explosive Judgment",
    type: ("Ability", "Oathsworn", "Sacred Decree"),
    blocks: (
      (kind: "active", cost: (actions(2),), limitation: per_encounter(1), tags: ("AoE",), effect: [Spend your Judgment Dice. Each enemy within 2 spaces of you takes that much radiant damage.]),
    ),
)

#let explosive_judgment = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Hits all enemies within Reach 2 (was: in your aura).
*/
