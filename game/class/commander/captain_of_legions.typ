#import "/global.typ": *

#let ability_data = (
    name: "Captain of Legions",
    type: ("Ability", "Commander"),
    blocks: (
      (kind: "passive", limitation: per_encounter(1), effect: [When you use #card_ref("Coordinated Strike!"), up to #INT allies who can hear you each gain 1 action on their next turn. This ability replaces #card_ref("Unparalleled Tactics").]),
    ),
)

#let captain_of_legions = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: "INT allies gain +1 action" (was: every ally within 12 spaces).

interpretation: "who can hear you" is kept from Unparalleled Tactics, which this replaces.
The +1 to any 2 stats is a stat increase and is not on the card.
*/
