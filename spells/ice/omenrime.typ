#import "../../global.typ": *

#let spell_data = (
    name: "Omenrime",
    type: (
        "Spell",
        "Ice",
        "Tier 3",
    ),
    cost: (
        actions(1),
        mana(3),
    ),
    reach: "6",
    effect: [Roll 1d6 and set it aside. Until the end of the encounter, when any die is rolled within Reach, you may replace it with this d6. The d6 counts as the original die. You can use it only once.],
    upcast: [Its Reach increases by 1. Roll 1 more d6, then keep 1 of them.],
)

#let omenrime = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Replaces Cryosleep from the book, following the changelogs.
*/
