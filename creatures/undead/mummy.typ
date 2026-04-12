#import "../../global.typ": *

#let creature_data = (
  name: "Mummy",
  type: (
    "Creature",
    "Undead",
  ),
  passive: (
    passive_abilities.undying,
  ),
  active: (
    [
      *Slam:*. 2 attaques. 1d4+8 damage. On crit: Dazed.
    ],
  ),
  hit_points: 55,
  level: "6",
  reminder: (conditions.dazed,),
)

#let mummy = creat_creature(creature_data)