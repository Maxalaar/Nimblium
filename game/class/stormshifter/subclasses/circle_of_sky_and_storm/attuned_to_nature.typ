#import "/global.typ": *

#let ability_data = (
    name: "Attuned to Nature",
    type: ("Ability", "Stormshifter", "Sky & Storm"),
    blocks: (
      (kind: "narrative", limitation: per_safe_rest(WIL), effect: [Add #LVL to a Naturecraft check.]),
    ),
)

#let attuned_to_nature = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: WIL per Safe Rest (was 1/day).

interpretation: The book's "any skill check related to nature or weather" is written as a
Naturecraft check, so that no GM ruling is needed.
*/
