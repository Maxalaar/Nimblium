#import "../../../global.typ": *

#let ability_data = (
    name: "Pinning Shot",
    type: (
        "Ability",
        "Hunter",
        "Thrill of the hunt"
    ),
    blocks: (
      (
        kind: "active",
        cost: ("3 Action", "1 TotH charge"),
        effect: [Shoot your quarry. They are #keyword_style[Restrained] until they can escape (DC 10+WIL).],
      ),
    ),
    reminder: (conditions.restrained,),
)

#let pinning_shot = creat_ability(ability_data)
