#import "../../global.typ": *

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
    effect: "Gain the effects of Flame Barrier until your next turn. At the end of this turn and your next turn, cast Pyroclasm for free.",
    upcast: "Upcast Flame Barrier and Pyroclasm.",
)

#let living_inferno = creat_spell(spell_data)