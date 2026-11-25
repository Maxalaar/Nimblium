#import "/global.typ": *

#let ability_data = (
    name: "Master of Nightfrost",
    type: ("Ability", "Shadowmancer", "Pact of the Abyssal Depths"),
    blocks: (
      (kind: "narrative", effect: [You can breathe underwater.]),
      (kind: "passive", effect: [Your #card_ref("Shadow", "Shadows") become creatures of nightfrost. #card_ref("Shadow Blast") and your #card_ref("Shadow", "Shadows") can deal cold or necrotic damage. When they roll the maximum on their damage, you gain #INT+#LVL temp #HP.]),
    ),
)

#let master_of_nightfrost = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: "would crit" -> "roll the max".

The book also grants Ice spells: no card for that (workflow.txt).
*/
