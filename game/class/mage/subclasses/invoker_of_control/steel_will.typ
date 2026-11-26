#import "/global.typ": *

#let ability_data = (
    name: "Steel Will",
    type: (
        "Ability",
        "Mage",
        "Invoker of Control",
    ),
    blocks: (
      (
        kind: "passive",
        limitation: per_safe_rest(1),
        effect: [When you would fail a #STR, #DEX, #INT or #WIL check, you may succeed instead.],
      ),
      (kind: "passive", effect: [Whenever you roll a 1 on an #card_ref("Elemental Surge") die, you may reroll it once.]),
    ),
)

#let steel_will = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
