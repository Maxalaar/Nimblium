#import "../../../global.typ": *

#let ability_data = (
    name: "Shadow Magus",
    type: ("Ability", "Shadowmancer", "Greater Invocation"),
    blocks: (
      (kind: "passive", effect: [Your Shadows' Reach increases by 4, and their attacks deal 1d10 damage instead of 1d12.]),
    ),
)

#let shadow_magus = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
