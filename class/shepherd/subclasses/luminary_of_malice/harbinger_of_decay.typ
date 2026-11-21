#import "../../../../global.typ": *

#let ability_data = (
    name: "Harbinger of Decay",
    type: (
        "Ability",
        "Shepherd",
        "Luminary of Malice",
    ),
    blocks: (
      (
        kind: "narrative",
        effect: [Vibrant colors and lovely smells fade near you. Food spoils faster in your presence, and you often wake up to flies wherever you lodge.],
      ),
      (
        kind: "passive",
        effect: [Your #card_ref("Spirit Companion") may take a deathly form, such as a zombie dog or a devious imp. If it does, its damage becomes necrotic.],
      ),
    ),
)

#let harbinger_of_decay = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
