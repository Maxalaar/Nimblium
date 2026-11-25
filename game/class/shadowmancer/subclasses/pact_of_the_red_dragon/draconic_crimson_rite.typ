#import "/global.typ": *

#let ability_data = (
    name: "Draconic Crimson Rite",
    type: ("Ability", "Shadowmancer", "Pact of the Red Dragon"),
    blocks: (
      (kind: "passive", effect: [Your #card_ref("Shadow", "Shadows") become shadows of flaming dragon wyrmlings. #card_ref("Shadow Blast") and your #card_ref("Shadow", "Shadows") can deal fire or necrotic damage. When they roll the maximum on their damage, the target becomes #kw_smoldering.]),
    ),
    reminder: (conditions.smoldering,),
)

#let draconic_crimson_rite = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: "would crit" -> "roll the max".

The book also grants Fire spells: no card for that (workflow.txt).
*/
