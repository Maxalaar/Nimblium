#import "../../../global.typ": *

#let ability_data = (
    name: "Trickshot",
    type: (
        "Ability",
        "Cheat",
        "Underhanded",
    ),
    blocks: (
      (kind: "passive", effect: [When you throw a dagger, it returns to your hand at the end of your turn. On a hit, it ricochets to another creature within 2 spaces, dealing half as much damage to them.]),
    ),
)

#let trickshot = creat_ability(ability_data)
