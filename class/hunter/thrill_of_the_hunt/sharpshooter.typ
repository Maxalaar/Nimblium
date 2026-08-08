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
        effect: [If you have not moved this turn and a #keyword_style[Marked] creature is 4 or more spaces away, attack them for double damage.],
      ),
    ),
    reminder: (hunter_keywords.marked,),
)

#let sharpshooter = creat_ability(ability_data)
