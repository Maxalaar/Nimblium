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
        limitation: "2/encounter",
        effect: [When you Defend against a melee attack, #keyword_style[Blind] the attacker until the start of their next turn and force them to reroll the attack.],
      ),
    ),
    reminder: (conditions.blinded,),
)

#let pocket_sand = creat_ability(ability_data)
