#import "/global.typ": *

#let spell_data = (
    name: "Helpful Gust",
    type: ("Spell", "Wind", "Utility"),
    cost: (actions(1),),
    reach: "6",
    effect: [Gently move a Tiny unheld item within Reach in any direction.

    Create an illusory scent.],
)

#let helpful_gust = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
