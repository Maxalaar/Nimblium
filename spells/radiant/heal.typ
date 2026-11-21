#import "../../global.typ": *

#let spell_data = (
    name: "Heal",
    type: ("Spell", "Radiant", "Tier 1"),
    cost: (actions(1), mana(1)),
    reach: "1",
    effect: [A creature within Reach regains 1d8+#KEY #HP.

    If you spend 5 or more mana on this spell, it also removes 1 Wound or 1 negative condition from the target.],
    upcast: (
        [It targets 1 more creature.],
        [Its Reach increases by 4.],
        [It heals 1d8 more #HP.],
    ),
)

#let heal = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
