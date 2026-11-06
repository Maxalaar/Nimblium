#import "../../../../global.typ": *

#let ability_data = (
    name: "Harbinger of Decay",
    type: (
        "Ability",
        "Shepherd",
        "Luminary of Malice",
    ),
    blocks: (
      (kind: "narrative", effect: [Vibrant colors and lovely smells are suppressed near you. Foods spoil more rapidly in your presence, and you frequently awaken to flies wherever you lodge.]),
      (kind: "passive", effect: [You may have your Spirit Companion shift into a deathly version of itself (a zombie dog, a devious imp, etc.) and have its damage type become necrotic.]),
    ),
)

#let harbinger_of_decay = creat_ability(ability_data)
