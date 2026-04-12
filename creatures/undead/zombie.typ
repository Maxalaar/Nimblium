#import "../../global.typ": *

#let creature_data = (
  name: "Zombie",
  type: (
    "Creature",
    "Undead",
  ),
  passive: (
    passive_abilities.undying,
  ),
  active: (
    [
      *Crunch:* 1d4+4 damage. On damage: Grappled.
    ],
  ),
  hit_points: 15,
  level: "1/2",
  reminder: (conditions.grappled,),
)

#let zombie = creat_creature(creature_data)