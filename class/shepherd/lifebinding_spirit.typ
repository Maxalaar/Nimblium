#import "../../global.typ": *

#let spell_data = (
    name: "Lifebinding Spirit",
    type: (
        "Spell",
        "Radiant",
        "Tier 1",
    ),
    cost: (
        "1 Action",
        "1 Mana",
    ),
    effect: [
        Summon your Spirit Companion. It lasts until you cast this spell again, you take a Safe Rest, or it reaches 0 HP.
      ],
    upcast: "Boost your Spirit Companion.",
)

#let lifebinding_spirit = creat_spell(spell_data)
