#import "/global.typ": *

#let ability_data = (
    name: "My Favored Pet",
    type: ("Ability", "Shadowmancer", "Lesser Invocation"),
    blocks: (
      (kind: "narrative", effect: [One of your #card_ref("Shadow", "Shadows") grudgingly stays with you outside combat. It can do any menial task a below-average commoner could, very creepily.]),
    ),
)

#let my_favored_pet = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
