#import "../../global.typ": *

#let ability_data = (
    name: "Talented Researcher",
    type: (
        "Ability",
        "Mage",
    ),
    blocks: (
      (
        kind: "narrative",
        effect: [You have #kw_advantage on Arcana and Lore checks when you have access to many books and the time to study them.],
      ),
    ),
)

#let talented_researcher = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
