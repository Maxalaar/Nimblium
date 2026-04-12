#import "../../global.typ": *

#let creature_data = (
  name: "Ogre Zombie",
  type: (
    "Creature",
    "Undead",
  ),
  passive: (
    passive_abilities.undying,
  ),
  active: (
    [
      *Greatclub:*. 2 attaques. 1d4+8 damage. On crit: Prone.
    ],
  ),
  hit_points: 45,
  level: "5",
  reminder: (conditions.prone,),
)

#let ogre_zombie = creat_creature(creature_data)