#import "/global.typ": *

#let ability_data = (
    name: "Rousing Inspiration",
    type: ("Ability", "Songweaver", "Herald of Courage"),
    blocks: (
      (kind: "passive", effect: [When you use #card_ref("Songweaver's Inspiration") on an ally, it also gains 1 action.]),
    ),
)

#let rousing_inspiration = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Level 7 (was level 11).

interpretation: Renamed from "Fire in My Bones" (user ruling 2026-11-28): card names are sober and
say what the card does, never a line a character would say.
*/
