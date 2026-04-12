#import "../../global.typ": *

#let creature_data = (
  name: "Mummy Lord",
  type: (
    "Creature",
    "Undead",
  ),
  passive: (
    passive_abilities.undying,
    [*Cursed Gaze:*  When crit: DC 20 INT save, or suffer 1 Wound],
  ),
  active: (
    [
      * Scarab Swarm:* Summon 10 scarab minions (d6) within 6 spaces.\
      then\
      *Slam:* 2 attaques. 1d4+20. On damage: Dazed.
    ],
  ),
  reminder: (conditions.dazed,),
  hit_points: 280,
  level: "21",
)

#let mummy_lord = creat_creature(creature_data)