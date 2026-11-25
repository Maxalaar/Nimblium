#import "/global.typ": *

#let ability_data = (
    name: "Enveloped by the Master",
    type: ("Ability", "Shadowmancer", "Pact of the Red Dragon"),
    blocks: (
      (kind: "passive", effect: [You may cast #card_ref("Dragonform") by gaining 1d4 Wounds instead of using #card_ref("Pilfered Power").]),
    ),
)

#let enveloped_by_the_master = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: The book says "Gain 1d4 Wounds to cast Dragonform". Read as an alternative
to Pilfered Power, like the other subclass abilities.
*/
