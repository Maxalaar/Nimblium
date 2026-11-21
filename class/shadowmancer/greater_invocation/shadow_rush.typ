#import "../../../global.typ": *

#let ability_data = (
    name: "Shadow Rush",
    type: ("Ability", "Shadowmancer", "Greater Invocation"),
    blocks: (
      (kind: "passive", effect: [When your #card_ref("Shadow", "Shadows") attack, any of them may deal their maximum damage instead of rolling, then die.]),
    ),
)

#let shadow_rush = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
