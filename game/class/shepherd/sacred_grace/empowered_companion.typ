#import "/global.typ": *

#let ability_data = (
    name: "Empowered Companion",
    type: (
        "Ability",
        "Shepherd",
        "Sacred Grace",
    ),
    blocks: (
      (
        kind: "passive",
        effect: [Whenever you cast #card_ref("Lifebinding Spirit"), it counts as cast 1 tier higher, ignoring the usual spell tier restrictions.],
      ),
      (
        kind: "passive",
        effect: [If #card_ref("Lifebinding Spirit") is cast at tier 5 or higher, your #card_ref("Spirit Companion")'s Die becomes 1d20.],
      ),
    ),
)

#let empowered_companion = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: The book raises the maximum die size to a d20. Here the die becomes a d20 at
tier 5 or higher, to fit the tier-based die of the house-rule Spirit Companion.

house-rule: The 2026-10-02 changelog version of this card is not applied. See the companion
house rule in game/class/shepherd/mod.typ.
*/
