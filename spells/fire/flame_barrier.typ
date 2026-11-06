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
    effect: [Once per round, you may cast this spell while Defending. Until the start of your next turn, whenever you are attacked in melee, all creatures within Reach 1 take #KEY damage and gain #kw_smoldering.],
    upcast: [+#KEY damage or +1 Reach.],
    reminder: (conditions.smoldering,)
)

#let flame_barrier = creat_spell(spell_data)