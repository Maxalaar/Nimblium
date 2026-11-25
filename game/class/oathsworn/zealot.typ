#import "/global.typ": *

#let ability_data = (
    name: "Zealot",
    type: ("Ability", "Oathsworn"),
    blocks: (
      (kind: "passive", effect: [When you hit with a melee weapon, you may spend mana, up to your highest spell tier. The attack deals 5 more damage for each mana spent.]),
    ),
)

#let zealot = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Was a choice per mana between Condemning Strike (+5 radiant damage) and Blessed
Aim -> a flat +5 damage per mana, chosen after you hit. Blessed Aim is gone.
*/
