#import "/global.typ": *

#let ability_data = (
    name: "Song of Domination",
    type: ("Ability", "Songweaver", "Lyrical Weaponry"),
    blocks: (
      (kind: "active", cost: (actions(2),), limitation: per_encounter(1), effect: [Each enemy within 6 spaces makes a #WIL check against #dc(10, stat: KEY). If it fails, you move it up to 6 spaces, and it can't move on its next turn. If it succeeds, you move it up to 3 spaces.]),
    ),
)

#let song_of_domination = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: An enemy that succeeds still moves half as far.

interpretation: The book says "enemies within 6 spaces who hear it": written as within 6
spaces.
*/
