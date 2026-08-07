#import "../../../global.typ": *

#let ability_data = (
    name: "Incendiary Shot",
    type: (
        "Ability",
        "Hunter",
        "Thrill of the hunt"
    ),
    blocks: (
      (
        kind: "active",
        cost: ("1 Action", "1 TotH charge"),
        effect: [Attack with a ranged weapon at half the weapon's range, add WIL $times$ d8 fire damage.],
      ),
    ),
)

#let incendiary_shot = creat_ability(ability_data)
