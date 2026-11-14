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
    effect: [The first time each turn a weapon within Reach hits, it deals +#KEY damage. When it crits, the target becomes #kw_smoldering.],
    upcast: [+#KEY damage.],
    reminder: (conditions.smoldering,)
)

#let enchant_weapon = creat_spell(spell_data)