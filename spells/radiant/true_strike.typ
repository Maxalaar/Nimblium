#import "../../global.typ": *

#let spell_data = (
    name: "True Strike",
    type: ("Spell", "Radiant", "Cantrip"),
    cost: (actions(1),),
    reach: "4",
    effect: [Choose a creature within Reach. Its next attack this encounter has #kw_advantage and ignores all #kw_disadvantage. That attack's Reach or Range increases by 1.],
    high_Levels: [This spell's Reach increases by 1 at levels 5, 10, 15 and 20.],
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
