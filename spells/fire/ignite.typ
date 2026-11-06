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
    effect: "Can only target a creature with the Smoldering status. Once damage is dealt, consumes the Smoldering status.",
    upcast: "+10 damage.",
)

#let ignite = creat_spell(spell_data)