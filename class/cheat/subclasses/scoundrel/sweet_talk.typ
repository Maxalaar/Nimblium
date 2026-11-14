// review: style=2026-11-14 changelog=2026-10-02
#import "../../../../global.typ": *

#let ability_data = (
    name: "Sweet Talk",
    type: (
        "Ability",
        "Cheat",
        "Scoundrel",
    ),
    blocks: (
      (
        kind: "narrative",
        effect: [You may gain advantage on Influence checks with an NPC you have just met. This lasts until you fail an Influence check with them or meet them a second time. After that, you have disadvantage on Influence checks with them until you get back on their good side.],
      ),
    ),
)

#let sweet_talk = creat_ability(ability_data)
