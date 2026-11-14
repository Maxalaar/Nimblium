#import "../../global.typ": *

#let spell_data = (
    name: "Flame Barrier",
    type: (
        "Spell",
        "Fire",
        "Tier 3",
        "AoE",
    ),
    cost: (
        mana(3),
    ),
    reach: "1",
    damage: [10+#KEY],
    effect: [Once per round, you may cast this spell while Defending. This round, whenever you are attacked, each creature within Reach takes this spell's damage and becomes #kw_smoldering.],
    upcast: [+#KEY damage or +1 Reach.],
    reminder: (conditions.smoldering,)
)

#let flame_barrier = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
