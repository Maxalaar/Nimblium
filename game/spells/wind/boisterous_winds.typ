#import "/global.typ": *

#let spell_data = (
    name: "Boisterous Winds",
    type: (
        "Spell",
        "Wind",
        "Tier 7",
    ),
    cost: (
        actions(2),
        mana(7),
    ),
    reach: "12",
    effect: [Move each creature within Reach up to 6 spaces in a straight line. At the start of your next turn, do it again with 4 spaces. At the start of the turn after, do it again with 2 spaces.],
    upcast: [Each movement is 2 spaces longer.],
)

#let boisterous_winds = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
