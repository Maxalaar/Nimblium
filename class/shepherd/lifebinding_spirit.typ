#import "../../global.typ": *

#let spell_data = (
    name: "Lifebinding Spirit",
    type: (
        "Spell",
        "Radiant",
        "Tier 1",
    ),
    cost: (
        actions(1),
        mana(1),
    ),
    effect: [
        Summon your Spirit Companion. It lasts until you cast this spell again.
      ],
    upcast: "Boost your Spirit Companion.",
)

#let lifebinding_spirit = creat_spell(spell_data)
