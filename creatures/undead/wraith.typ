#import "../../global.typ": *

#let creature_data = (
  name: "Wraith",
  type: (
    "Creature",
    "Undead",
  ),
  ability: (
    [
      *Soul Rend:*. 2 attaques. Range 8. 1d4+10 damage. On damage: deal 1 Wound.
    ],
  ),
  hit_points: 100,
  level: "10",
)

#let wraith = creat_creature(creature_data)