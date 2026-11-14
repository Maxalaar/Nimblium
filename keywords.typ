#import "terms.typ": *

#let keywords = (
  difficult_terrain: [*Difficult Terrain:* Each space of Difficult Terrain costs 2 spaces of movement.],
  d44: [*D44:* Roll 2d4. The leftmost die is the tens digit, and the other die is the ones digit.],
  d66: [*D66:* Roll 2d6. The leftmost die is the tens digit, and the other die is the ones digit.],
  d88: [*D88:* Roll 2d8. The leftmost die is the tens digit, and the other die is the ones digit.],
  distracted: [*Distracted:* A creature is Distracted if it is adjacent to or Taunted by one of your allies, if it can't see you, or if you have Hide from it.],
  blindsight: [*Blindsight X:* This creature can sense creatures and obstacles within X spaces, ignoring Blind, darkness, and invisibility.],
  advantage: [*Advantage:* Roll 1 additional die of the same type for each instance of advantage, then remove that many of the lowest results.],
  disadvantage: [*Disadvantage:* Roll 1 additional die of the same type for each instance of disadvantage, then remove that many of the highest results.],
  vulnerable: [*Vulnerable:* This creature takes 10 additional damage from the listed damage type.],
  knockback: [*Knockback X:* Push this creature X spaces away. If an obstacle stops it, it takes 1d6 damage per space it didn't move.],
  hide: [*Hide:* Spend 1 action and make a #dc(10) Stealth check to Hide from the creatures you have Cover from. Full Cover succeeds automatically. Your next attack has advantage, then you lose Hide.],
  cover: [*Cover:* An obstacle partially blocks a creature's line of attack to you, so its ranged attacks against you have disadvantage.],
  interpose: [*Interpose:* When a creature within 2 spaces of you would be hit by an attack, you may spend 1 action to become the new target of that attack. You move into its space, and it moves to an adjacent space of its choice. You can do this once per round.],
  full_cover: [*Full Cover:* An obstacle completely blocks a creature's line of attack to you, so it cannot target you with ranged attacks.],
)

/*
house-rule: Cover and Full Cover only affect ranged attacks, and are worded with line of
attack.
*/
