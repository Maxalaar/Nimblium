#import "../../global.typ": *

#let spell_data = (
    name: "Echoburst",
    type: (
        "Spell",
        "Wind",
        "Tier 3",
    ),
    cost: (
        actions(2),
        mana(3),
    ),
    reach: "1",
    damage: [#kw_d44],
    effect: [Choose a space within Reach. The creature in that space takes this spell's damage, ignoring #defense. Any creature in that space at the start of your next turn takes this spell's damage again.],
    upcast: [#kw_advantage or +1 Reach.],
    reminder: (keywords.d44, keywords.advantage),
)

#let echoburst = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Replaces Fly from the book, following the 2026-10-02 changelog.
*/
