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
    concentration: "1 min",
    reach: "4",
    damage: [#kw_d88],
    effect: [You can fly. Once per round, you may move for free. Attacks against you have disadvantage.\
    At the end of each of your turns, this spell deals its damage to up to 4 different creatures within Reach. Then its Reach and its number of creatures each increase by 2.\
    At the start of each of your turns, spend #actions(3) to maintain this spell, or it ends.\
    After you cast this spell, you must #safe_rest for 1 week before you can cast it again.],
)

#let seething_storm = creat_spell(spell_data)
