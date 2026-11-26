#import "/global.typ": *

#let ability_data = (
    name: "Unstoppable Force",
    type: (
        "Ability",
        "Berserker",
        "Savage Arsenal",
    ),
    blocks: (
      (
        kind: "passive",
        effect: [While you are #kw_dying, attacks against you have #kw_disadvantage.],
      ),
    ),
    reminder: (conditions.dying, keywords.disadvantage),
)

#let unstoppable_force = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: The Dying condition now gives 1 Wound per hit (2 on a crit), which was this card's
effect: it now gives attacks against you disadvantage while you are Dying.
*/
