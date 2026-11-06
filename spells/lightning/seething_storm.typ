#import "../../global.typ": *

#let spell_data = (
    name: "Seething Storm",
    type: (
        "Spell",
        "Lightning",
        "Tier 9",
        "AoE",
    ),
    cost: (
        actions(3),
        mana(9),
    ),
    concentration: "Up to 1 minute.",
    reach: "4",
    damage: [#kw_d88],
    effect: [You become a cloud of tempestuous storm. You can fly, you may move for free once per round, and attacks against you have disadvantage. At the end of each of your turns, strike up to 4 creatures within Reach with a bolt that deals the damage. A creature can be struck only once per round. Each round, this spell gains +2 Reach and +2 bolts, and maintaining it costs 3 actions. Once you cast this spell, you must #safe_rest for 1 week before using it again.],
    reminder: (keywords.d88,),
)

#let seething_storm = creat_spell(spell_data)
