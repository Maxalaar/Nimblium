#import "../../global.typ": *

#let creature_data = (
  name: "Ghoul",
  type: (
    "Creature",
    "Undead",
  ),
  ability: (
    [
      *Crunch:* 1d4+8 damage. On damage: Dazed.
    ],
  ),
  hit_points: 20,
  level: "1",
  reminder: (conditions.dazed,),
)

#let ghoul = creat_creature(creature_data)