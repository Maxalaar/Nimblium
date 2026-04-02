#import "../../card_structure/creat_spell.typ": creat_spell

#let spell_data = (
    name: "Ignite",
    type: (
        "Spell",
        "Tier 1",
        "Fire",
    ),
    cost: (
        "2 Action",
        "1 Mana",
    ),
    range: "8",
    damage: "4d10",
    effect: "Can only target a creature with the Smoldering status. Once damage is dealt, consumes the Smoldering status.",
    upcast: "+10 damage.",
)

#let ignite = creat_spell(spell_data)