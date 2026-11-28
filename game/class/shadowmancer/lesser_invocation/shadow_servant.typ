#import "/global.typ": *

#let ability_data = (
    name: "Shadow Servant",
    type: ("Ability", "Shadowmancer", "Lesser Invocation"),
    blocks: (
      (kind: "narrative", effect: [One of your #card_ref("Shadow", "Shadows") grudgingly stays with you outside combat. It can do any menial task a below-average commoner could, very creepily.]),
    ),
)

#let shadow_servant = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: Renamed from "My Favored Pet" (user ruling 2026-11-28): card names are sober and
say what the card does, never a line a character would say.
*/
