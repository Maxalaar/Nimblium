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

/*
house-rule: The spell lasts until you cast it again: the Spirit Companion's HP pool replaces
the book's healing charges and Safe Rest limit. See spirit_companion.typ.

changelog: The 2026-10-02 changelog turns Lifebinding Spirit into a level 1 cantrip with
Harm and Mend. Not applied yet: it conflicts with the Spirit Companion house rule and must
be decided first.
*/
