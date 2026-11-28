#import "/global.typ": *

#let ability_data = (
    name: "Juggernaut",
    type: ("Ability", "Commander", "Champion of the Bulwark"),
    blocks: (
      (kind: "active", cost: (actions(1),), effect: [When you use #card_ref("Coordinated Strike"), your attack deals extra damage equal to your #defense and you add 1 to its #primary_die.]),
    ),
)

#let juggernaut = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Now costs an additional action.
*/
