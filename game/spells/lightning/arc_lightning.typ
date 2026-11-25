#import "/global.typ": *

#let spell_data = (
    name: "Arc Lightning",
    type: (
        "Spell",
        "Lightning",
        "Tier 1",
    ),
    cost: (
        actions(2),
        mana(1),
    ),
    range: "12",
    damage: "3d8",
    effect: [This spell also deals its damage to the creature closest to the target, even if it is you or an ally.],
    upcast: [It deals 4 more damage.],
)

#let arc_lightning = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
