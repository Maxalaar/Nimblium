#import "/global.typ": *

#let ability_data = (
    name: "Unfailing Resolve",
    type: ("Ability", "Songweaver", "Herald of Courage"),
    blocks: (
      (kind: "passive", effect: [When you use #card_ref("Songweaver's Inspiration"), the ally rerolls with #kw_advantage, or adds 2 to the result instead of 1.]),
    ),
    reminder: (keywords.advantage,),
)

#let unfailing_resolve = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Replaces Unfailing Courage (Inspiration rolls with advantage), at level 11 (was 7).
*/
