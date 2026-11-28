#import "/global.typ": *

#let ability_data = (
    name: "Survey the Battlefield",
    type: ("Ability", "Commander", "Champion of the Vanguard"),
    blocks: (
      (kind: "passive", effect: [You can use #card_ref("Coordinated Strike") 1 more time per encounter.]),
      (kind: "passive", effect: [You gain 1 more #card_ref("Combat Dice", "Combat Die") when combat starts.]),
    ),
)

#let survey_the_battlefield = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: "+1 max Combat Dice" is read as 1 more Combat Die each time combat
starts.

house-rule: The book's "regain 1 use of Coordinated Strike when you roll Initiative" dates
from when it was only a Safe Rest pool. Written as 1 more use per encounter (user ruling
2026-11-21).
*/
