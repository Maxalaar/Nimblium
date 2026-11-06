#import "../../global.typ": *

#let ability_data = (
    name: "Talented Researcher",
    type: (
        "Ability",
        "Mage",
    ),
    blocks: (
      (kind: "narrative", effect: [Gain advantage on Arcana or Lore checks when you have access to a large amount of books and time to study them.]),
    ),
)

#let talented_researcher = creat_ability(ability_data)
