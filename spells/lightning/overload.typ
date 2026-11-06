#import "../../global.typ": *

#let spell_data = (
    name: "Overload",
    type: (
        "Spell",
        "Lightning",
        "Cantrip",
        "AoE",
    ),
    cost: (
        actions(1),
    ),
    reach: "2",
    damage: "2d8",
    effect: [You may cast this spell only while you are #kw_charged. Other creatures within Reach take the damage.],
    high_Levels: [+4 damage every 5 levels.],
    reminder: (conditions.charged,),
)

#let overload = creat_spell(spell_data)
