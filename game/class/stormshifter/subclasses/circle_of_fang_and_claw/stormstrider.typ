#import "/global.typ": *

#let ability_data = (
    name: "Stormstrider",
    type: ("Ability", "Stormshifter", "Fang & Claw"),
    blocks: (
      (kind: "passive", effect: [#card_ref("Beast of the Pack") increases your #speed by #times(2, DEX), and you may move #times(2, DEX) spaces for free on each of your turns.]),
      (kind: "passive", effect: [When you move in #card_ref("Beast of the Pack") form, you may teleport instead.]),
    ),
)

#let stormstrider = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Replaces Storm Wake (2 mana to shift into Beast of the Pack and teleport through
enemies for WIL d8 lightning damage).
*/
