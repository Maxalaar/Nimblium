#import "/global.typ": *

#let ability_data = (
    name: "Fire in My Bones",
    type: ("Ability", "Songweaver", "Herald of Courage"),
    blocks: (
      (kind: "passive", effect: [When you use #card_ref("Songweaver's Inspiration") on an ally, it also gains 1 action.]),
    ),
)

#let fire_in_my_bones = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Level 7 (was level 11).
*/
