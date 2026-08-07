#import "../../../../global.typ": *

#let ability_data = (
    name: "KILL",
    type: (
        "Ability",
        "Cheat",
        "Silent Blade",
    ),
    blocks: (
      (kind: "passive", effect: [When you crit an enemy with fewer max HP than you, it dies.]),
    ),
)

#let kill = creat_ability(ability_data)
