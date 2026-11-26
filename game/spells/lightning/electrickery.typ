#import "/global.typ": *

#let spell_data = (
    name: "Electrickery",
    type: (
        "Spell",
        "Lightning",
        "Tier 4",
    ),
    cost: (
        actions(3),
        mana(4),
    ),
    range: "8",
    effect: [Once per round, when an ally within Range is attacked, you may cast this spell. That ally teleports to a space of your choice within Range. Choose another creature within Range. It makes a #WIL check. If it fails, it teleports into the ally's previous space and becomes the target of the attack.

    While you are #kw_charged, this spell costs #actions(1) instead.],
    upcast: [Its Range increases by 2.],
    reminder: (conditions.charged,),
)

#let electrickery = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
