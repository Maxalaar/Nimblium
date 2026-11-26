#import "/global.typ": *

#let ability_data = (
    name: "Leader of the Pack",
    type: ("Ability", "Stormshifter", "Chimeric Boon"),
    blocks: (
      (kind: "passive", effect: [You and your allies within 6 spaces have #kw_advantage on checks against fear and charm.]),
      (kind: "passive", effect: [On each of their turns, your allies within 6 spaces may move up to 2 spaces toward you for free.]),
    ),
)

#let leader_of_the_pack = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Allies move 2 spaces toward you for free on each of their turns.

interpretation: The book's "advantage against fear and charm effects" is written as checks
against fear and charm. The free movement uses the same 6 spaces.
*/
