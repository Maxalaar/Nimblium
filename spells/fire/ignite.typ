#import "../../global.typ": *

#let spell_data = (
    name: "Ignite",
    type: (
        "Spell",
        "Fire",
        "Tier 1",
    ),
    cost: (
        actions(2),
        mana(1),
    ),
    range: "8",
    damage: "4d10",
    effect: [This spell can target only a #kw_smoldering creature.],
    upcast: [+10 damage.],
    reminder: (conditions.smoldering,),
)

#let ignite = creat_spell(spell_data)