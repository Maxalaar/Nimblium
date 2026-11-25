#import "/global.typ": *

#let spell_data = (
    name: "Creeping Death",
    type: ("Spell", "Necrotic", "Tier 7", "AoE"),
    cost: (actions(3), mana(7)),
    reach: "8",
    damage: "4d20",
    effect: [Whenever this spell kills a creature, you must deal the same damage to another creature within 8 spaces of it that this spell hasn't damaged yet. This repeats until a creature survives, up to 4 times.],
    upcast: [It deals 10 more damage and can repeat 1 more time.],
)

#let creeping_death = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: The chain repeats at most 4 times, plus 1 per upcast (user ruling, 2026-11-21).
The book and changelog set no limit.
*/
