// review: style=2026-11-14 changelog=2026-10-02
#import "../../../global.typ": *

#let ability_data = (
    name: "How'd YOU get here?!",
    type: (
        "Ability",
        "Cheat",
        "Underhanded",
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(2),),
        effect: [Teleport up to 12 spaces to a space adjacent to a #kw_distracted creature, then make a melee attack against it. If you crit, you may teleport again, up to 12 spaces.],
      ),
    ),
    reminder: (keywords.distracted,),
)

#let how_you_get_here = creat_ability(ability_data)
