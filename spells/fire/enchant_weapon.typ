#import "../../global.typ": *

#let spell_data = (
    name: "Enchant Weapon",
    type: (
        "Spell",
        "Fire",
        "Tier 2",
    ),
    cost: (
        actions(1),
        mana(2),
    ),
    concentration: "1 min",
    reach: "8",
    effect: [A weapon within Reach is enchanted with magical flame. It deals +#KEY damage and inflicts #kw_smoldering on crit.],
    upcast: [+#KEY damage.],
    reminder: (conditions.smoldering,)
)

#let enchant_weapon = creat_spell(spell_data)