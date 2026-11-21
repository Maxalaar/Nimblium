#import "../../../global.typ": *

#let ability_data = (
    name: "Armor of Shadows",
    type: ("Ability", "Shadowmancer", "Greater Invocation"),
    blocks: (
      (kind: "passive", effect: [You take less damage equal to the number of Shadows you have.]),
    ),
)

#let armor_of_shadows = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
