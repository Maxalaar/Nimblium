#import "/global.typ": *

#let ability_data = (
    name: "Paragon of Power",
    type: ("Ability", "Oathsworn", "Oathbreaker"),
    blocks: (
      (kind: "narrative", effect: [You have #kw_advantage on Might checks to intimidate someone. This ability replaces #card_ref("Paragon of Virtue").]),
    ),
    reminder: (keywords.advantage,),
)

#let paragon_of_power = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.74 (Paragon of Power, replaces Paragon of Virtue).
*/
