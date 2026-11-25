#import "/global.typ": *

#let ability_data = (
    name: "Hasty Companion",
    type: (
        "Ability",
        "Shepherd",
        "Sacred Grace",
    ),
    blocks: (
      (kind: "passive", effect: [Your #card_ref("Spirit Companion")'s #speed increases by 4.]),
      (kind: "passive", effect: [When you summon your #card_ref("Spirit Companion"), it may use one of its abilities for free.]),
    ),
)

#let hasty_companion = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: +4 speed instead of the book's +4 Reach, because the house-rule Spirit Companion
acts in contact.
*/
