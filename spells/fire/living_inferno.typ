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
    effect: [You gain the effects of Flame Barrier until the start of your next turn. At the end of this turn and of your next turn, you cast Pyroclasm for free.],
    upcast: [Flame Barrier and Pyroclasm are upcast by the same amount.],
)

#let living_inferno = creat_spell(spell_data)