#import "/global.typ": *

#let ability_data = (
    name: "Creature of the Fey",
    type: ("Ability", "Stormshifter", "Sky & Storm"),
    blocks: (
      (kind: "passive", effect: [You can cast spells while you are in a #card_ref("Beastshift") form. Casting a spell doesn't end it.]),
    ),
)

#let creature_of_the_fey = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
