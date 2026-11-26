#import "/global.typ": *

#let ability_data = (
    name: "Archdruid",
    type: ("Ability", "Stormshifter"),
    blocks: (
      (kind: "passive", effect: [After you cast a tiered spell, you may use #card_ref("Beastshift") for no action.]),
    ),
)

#let archdruid = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Beastshift for 0 actions after a tiered spell (was: 1/encounter, cast a spell up to
tier 4 for free when you enter or leave a form).
*/
