#import "../../global.typ": *

#let creature_data = (
  name: "Giant Zombie",
  type: (
    "Creature",
    "Undead",
  ),
  ability: (
    [
      *Decaying Swipe:*. 2 attaques. 1d4+10 damage. On damage: knockback Primary Die spaces.
    ],
  ),
  hit_points: 75,
  level: "8",
)

#let giant_zombie = creat_creature(creature_data)