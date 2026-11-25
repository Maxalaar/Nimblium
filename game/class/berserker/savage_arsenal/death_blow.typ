#import "/global.typ": *

#let ability_data = (
    name: "Death Blow",
    type: (
        "Ability",
        "Berserker",
        "Savage Arsenal",
    ),
    blocks: (
      (
        kind: "passive",
        effect: [Whenever you crit, you may double the damage of your #card_ref("Fury Dice"). If you do, you don't roll any additional dice for the crit.],
      ),
    ),
)

#let death_blow = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
