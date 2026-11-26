#import "/global.typ": *

#let ability_data = (
    name: "Song of Rest",
    type: ("Ability", "Songweaver"),
    blocks: (
      (kind: "passive", effect: [During a Field Rest, each ally that spends Hit Dice regains 1 more #HP for each Hit Die it spends.]),
    ),
)

#let song_of_rest = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: +1 HP for each Hit Die spent, with no limit (was: 1/day, +WIL HP for each creature
that spends Hit Dice).
*/
