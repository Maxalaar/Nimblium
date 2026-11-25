#import "/global.typ": *

#let ability_data = (
    name: "Armor Master",
    type: ("Ability", "Commander", "Champion of the Bulwark"),
    blocks: (
      (kind: "passive", effect: [You can wear plate armor.]),
    ),
)

#let armor_master = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
