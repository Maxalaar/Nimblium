#import "../../../global.typ": *

#let ability_data = (
    name: "Sharpshooter",
    type: (
        "Ability",
        "Hunter",
        "Thrill of the hunt"
    ),
    blocks: (
      (
        kind: "active",
        cost: ("1 Action", "1 TotH charge"),
        effect: [If you have not moved this turn and your quarry is 4 or more spaces away, attack them for double damage.],
      ),
    ),
)

#let sharpshooter = creat_ability(ability_data)
