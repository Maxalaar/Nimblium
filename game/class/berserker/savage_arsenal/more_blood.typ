#import "/global.typ": *

#let ability_data = (
    name: "MORE BLOOD!",
    type: (
        "Ability",
        "Berserker",
        "Savage Arsenal",
    ),
    blocks: (
      (kind: "passive", effect: [Whenever an enemy crits you, gain 1 Fury Die.]),
      (kind: "passive", effect: [Whenever you drop to 0 #HP, use #card_ref("Rage") for free.]),
    ),
)

#let more_blood = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
