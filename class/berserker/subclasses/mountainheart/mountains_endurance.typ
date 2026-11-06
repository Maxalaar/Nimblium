#import "../../../../global.typ": *

#let ability_data = (
    name: "Mountain's Endurance",
    type: (
        "Ability",
        "Berserker",
        "Mountainheart",
    ),
    blocks: (
      (kind: "passive", effect: [While #kw_dying, if an attack against you would be a crit, the attack is rerolled instead, when-crit abilities, such as Titan's Fury, still trigger.]),
    ),
    reminder: (conditions.dying,),
)

#let mountains_endurance = creat_ability(ability_data)
