#import "/global.typ": *

#let ability_data = (
    name: "Song of Rest",
    type: ("Ability", "Songweaver"),
    blocks: (
      (kind: "passive", limitation: per_safe_rest(2), effect: [When combat ends, you may have each ally that took part in it regain #WIL + #LVL #HP.]),
    ),
)

#let song_of_rest = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: +1 HP for each Hit Die spent, with no limit (was: 1/day, +WIL HP for each creature
that spends Hit Dice).

house-rule: Each ally that fought regains WIL + LVL HP when combat ends (book: +1 HP for each Hit
Die spent during a rest); there are no Hit Dice or Field Rests.
house-rule: 2/Rest, chosen when combat ends (user ruling 2026-11-27: with no limit, many short fights
would heal the party for free).
*/
