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
    effect: [Once per round, you may cast this spell while Defending. Until the start of your next turn, whenever you are attacked in melee, each creature within Reach takes #KEY damage, ignoring armor, and becomes #kw_smoldering.],
    upcast: [+#KEY damage or +1 Reach.],
    reminder: (conditions.smoldering,)
)

#let flame_barrier = creat_spell(spell_data)