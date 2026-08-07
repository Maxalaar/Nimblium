#import "../../../global.typ": *

#let ability_data = (
    name: "How’d YOU get here?!",
    type: (
        "Ability",
        "Cheat",
        "Underhanded",
    ),
    blocks: (
      (
        kind: "active",
        cost: ("2 Action",),
        effect: [Place yourself adjacent to a #keyword_style[Distracted] target within Reach 4. Make a melee attack against them. If you crit, you may place yourself within Reach 4.],
      ),
    ),
    reminder: (keywords.distracted,),
)

#let how_you_get_here = creat_ability(ability_data)