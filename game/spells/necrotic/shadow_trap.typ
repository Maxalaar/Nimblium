#import "/global.typ": *

#let spell_data = (
    name: "Shadow Trap",
    type: ("Spell", "Necrotic", "Tier 1"),
    cost: (actions(1), mana(1)),
    reach: "8",
    damage: "2d12",
    effect: [Once per round, when an enemy moves adjacent to an ally within Reach, you may cast this spell on that enemy. If it is Small or Tiny, it is also #kw_restrained until it escapes.],
    upcast: [It can restrain a creature 1 size larger, and a creature it restrains takes 1d12 damage when it escapes.],
    reminder: (conditions.restrained,),
)

#let shadow_trap = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: The changelog rewrites the trigger and the damage but says nothing about the
upcast. The book's upcast (+1 size category, +1d12 damage when they escape) is kept.
*/
