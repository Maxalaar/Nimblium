#import "/global.typ": *

#let spell_data = (
    name: "Living Inferno",
    type: (
        "Spell",
        "Fire",
        "Tier 7",
    ),
    cost: (
        actions(3),
        mana(7),
    ),
    effect: [You gain the effects of #card_ref("Flame Barrier") until the start of your next turn. At the end of this turn and of your next turn, you cast #card_ref("Pyroclasm") for free.],
    upcast: [#card_ref("Flame Barrier") and #card_ref("Pyroclasm") are upcast by the same amount.],
)

#let living_inferno = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
