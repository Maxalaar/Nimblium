#import "/global.typ": *

#let ability_data = (
    name: "Unparalleled Tactics",
    type: ("Ability", "Commander"),
    blocks: (
      (kind: "passive", limitation: per_encounter(1), effect: [When you use #card_ref("Coordinated Strike!"), an ally who can hear you gains 1 action on its next turn.]),
    ),
)

#let unparalleled_tactics = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
