#import "/global.typ": *

#let ability_data = (
    name: "Sovereign One",
    type: ("Ability", "Shadowmancer", "Reaver"),
    blocks: (
      (kind: "passive", effect: [When combat starts, summon 2 #card_ref("Shadow", "Shadows") and your #card_ref("Bonescythe") for free.]),
    ),
)

#let sovereign_one = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.78 (I'm the Patron Now!, level 15) and the 2026-10-02 changelog (renamed
Sovereign One; it also summons your Bonescythe).
*/
