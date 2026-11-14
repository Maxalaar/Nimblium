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
    effect: [Summon your Spirit Companion. It lasts until you cast this spell again.],
    upcast: [Your Spirit Companion's Die and #HP depend on the tier this spell is cast at.],
)

#let lifebinding_spirit = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: The spell lasts until you cast it again: the Spirit Companion's HP pool replaces
the book's healing charges and Safe Rest limit. See spirit_companion.typ.

house-rule: The 2026-10-02 changelog version of this card is not applied: it turns Lifebinding
Spirit into a level 1 cantrip with Harm and Mend. See the companion house rule in
class/shepherd/mod.typ.
*/
