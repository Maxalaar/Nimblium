#import "../../../../global.typ": *

#let ability_data = (
    name: "Mountain's Endurance",
    type: (
        "Ability",
        "Berserker",
        "Mountainheart",
    ),
    blocks: (
      (
        kind: "passive",
        effect: [While you are #kw_dying, when an attack against you would be a crit, it is rerolled instead. Abilities that trigger on a crit, such as #card_ref("Titan's Fury"), still trigger.],
      ),
    ),
    reminder: (conditions.dying,),
)

#let mountains_endurance = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
