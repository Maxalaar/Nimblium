#import "/global.typ": *

#let spell_data = (
    name: "Eye of the Storm",
    type: (
        "Spell",
        "Wind",
        "Tier 4",
        "AoE",
    ),
    cost: (
        actions(2),
        mana(4),
    ),
    reach: "3",
    damage: "4d4+10",
    effect: [This spell deals its damage to each enemy within Reach. Each enemy that survives makes a #STR save. If it fails, you may move it to any space within Reach or 1 space beyond it.],
    upcast: [Its Reach increases by 1.],
)

#let eye_of_the_storm = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
