#import "/global.typ": *

#let ability_data = (
    name: "Eldritch Usurper",
    type: ("Ability", "Shadowmancer"),
    blocks: (
      (kind: "passive", limitation: per_encounter(1), effect: [When you cast #card_ref("Summon Shadow"), you may summon a #card_ref("Greater Shadow") instead.]),
    ),
)

#let eldritch_usurper = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Was "summon 2 Shadows instead of 1; they die only to 12 or more damage". The
book's +1 to any 2 stats is a stat increase and is not on the card.
*/
