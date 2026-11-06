#import "../../../../global.typ": *

#let ability_data = (
    name: "Pocket Sand",
    type: (
        "Ability",
        "Cheat",
        "Scoundrel",
    ),
    blocks: (
      (
        kind: "passive",
        limitation: per_encounter(2),
        effect: [When you Defend against a melee attack, #kw_blind the attacker until the start of their next turn and force them to reroll the attack.],
      ),
    ),
    reminder: (conditions.blind,),
)

#let pocket_sand = creat_ability(ability_data)
