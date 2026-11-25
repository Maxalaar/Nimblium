#import "/global.typ": *

#let ability_data = (
    name: "As One!",
    type: ("Ability", "Commander", "Champion of the Vanguard"),
    blocks: (
      (kind: "passive", effect: [Attacks made with #card_ref("Coordinated Strike!") have #kw_advantage.]),
    ),
    reminder: (keywords.advantage,),
)

#let as_one = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Was advantage, ignore disadvantage and +1 action for the chosen allies -> only
advantage.
*/
