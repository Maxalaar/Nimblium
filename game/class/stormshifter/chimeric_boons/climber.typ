#import "/global.typ": *

#let ability_data = (
    name: "Climber",
    type: ("Ability", "Stormshifter", "Chimeric Boon"),
    blocks: (
      (kind: "passive", effect: [You can move across walls and ceilings. You ignore #kw_difficult_terrain.]),
    ),
    reminder: (keywords.difficult_terrain,),
)

#let climber = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
