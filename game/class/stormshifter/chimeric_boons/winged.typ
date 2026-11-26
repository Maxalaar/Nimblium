#import "/global.typ": *

#let ability_data = (
    name: "Winged",
    type: ("Ability", "Stormshifter", "Chimeric Boon"),
    blocks: (
      (kind: "passive", effect: [You are #kw_flying.]),
    ),
    reminder: (keywords.flying,),
)

#let winged = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: The book's "forced movement moves you twice as far while flying" is part of
the Flying keyword.
*/
