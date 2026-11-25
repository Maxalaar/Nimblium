#import "/global.typ": *

#let spell_data = (
    name: "Lifebinding Spirit",
    type: (
        "Spell",
        "Radiant",
        "Tier 1",
        "Shepherd",
    ),
    cost: (
        actions(1),
        mana(1),
    ),
    effect: [Summon your #card_ref("Spirit Companion"). It lasts until you cast this spell again. If it is more than 100 spaces from you, it disappears.],
    upcast: [It has 10 #HP per tier. Its Die is 1d6 at tier 1, 1d8 at tier 2, 1d10 at tier 3 and 1d12 at tier 4 or higher.],
)

#let lifebinding_spirit = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: The spell lasts until you cast it again, not until a Safe Rest or a number of
heals: the companion has an HP pool, and its heals are limited per Safe Rest on its own
card. See spirit_companion.typ.

The companion's Die by tier and the 100-space bond live here, not on the creature card,
to free space there (2026-11-21).

house-rule: The 2026-10-02 changelog version of this card is not applied: it turns Lifebinding
Spirit into a level 1 cantrip with Harm and Mend. See the companion house rule in
game/class/shepherd/mod.typ.
*/
