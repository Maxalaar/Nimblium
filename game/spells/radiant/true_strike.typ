#import "/global.typ": *

#let spell_data = (
    name: "True Strike",
    type: ("Spell", "Radiant", "Cantrip"),
    cost: (actions(1),),
    reach: "4",
    effect: [Choose a creature within Reach. Its next attack this encounter has #kw_advantage and ignores all #kw_disadvantage. That attack's Reach or Range increases by 1.],
    high_Levels: [
      *Level 5:* Reach 5.\
      *Level 10:* Reach 6.\
      *Level 15:* Reach 7.\
      *Level 20:* Reach 8.
    ],
    reminder: (keywords.advantage, keywords.disadvantage),
)

#let true_strike = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: The changelog says the attack gains "+1 Reach" and that it works on any
attack, not only melee. A ranged attack gains 1 Range instead.

interpretation: The changelog drops the book's "until the end of their next turn": the bonus
waits for the creature's next attack this encounter.
*/
