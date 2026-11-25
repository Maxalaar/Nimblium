#import "/global.typ": *

#let spell_data = (
    name: "Barrier of Wind",
    type: (
        "Spell",
        "Wind",
        "Tier 2",
    ),
    cost: (
        mana(2),
    ),
    reach: "1",
    effect: [Once per round, you may cast this spell while Defending against a ranged attack. Reduce the attack's #primary_die by 3. If the attack then misses, you may redirect it to another space within Reach.],
    upcast: [The #primary_die reduction and its Reach each increase by 1.],
)

#let barrier_of_wind = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
