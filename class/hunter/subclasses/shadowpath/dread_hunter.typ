#import "../../../../global.typ": *

#let ability_data = (
    name: "Dread Hunter",
    type: (
        "Ability",
        "Hunter",
        "Shadowpath",
    ),
    blocks: (
      (
        kind: "passive",
        effect: [When you attack a #kw_marked creature, you get both Hunter's Mark options: advantage on the attack and #LVL additional damage.],
      ),
    ),
    reminder: (hunter_keywords.marked,),
)

#let dread_hunter = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Replaces Pack Hunter from the book, following the 2026-10-02 changelog.
*/
