#import "/global.typ": *

#let spell_data = (
    name: "Kindle",
    type: ("Spell", "Fire", "Utility"),
    cost: (actions(1),),
    range: "6",
    effect: [Conjure a minor visual illusion.

    Set fire to a small unheld item within Range.],
)

#let kindle = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
