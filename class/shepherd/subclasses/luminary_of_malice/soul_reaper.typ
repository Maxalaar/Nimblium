#import "../../../../global.typ": *

#let ability_data = (
    name: "Soul Reaper",
    type: (
        "Ability",
        "Shepherd",
        "Luminary of Malice",
    ),
    blocks: (
      (kind: "passive", effect: [When you use Searing Light to harm an enemy, a 2nd enemy within range takes the same amount of damage, ignoring armor.]),
    ),
)

#let soul_reaper = creat_ability(ability_data)
