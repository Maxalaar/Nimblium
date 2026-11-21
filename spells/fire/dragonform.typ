#import "../../global.typ": *

#let spell_data = (
    name: "Dragonform",
    type: (
        "Spell",
        "Fire",
        "Tier 9",
    ),
    cost: (
        actions(5),
        mana(9),
    ),
    effect: [You can fly, and your #speed becomes 12. Your #defense becomes #LVL. You gain #times(10, LVL) temp #HP, 3 actions and the #card_ref("Dragon Form") abilities. You can't use your other abilities, but you can still cast spells.

    You may end this form at any time. It ends after 10 minutes or when you lose this temp #HP. Your #HP then becomes 0, and you are #kw_dying.],
    reminder: (conditions.dying,),
)

#let dragonform = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
