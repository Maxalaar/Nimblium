#import "/global.typ": *

#let spell_data = (
    name: "Bond of Peace",
    type: ("Spell", "Radiant", "Utility"),
    cost: (actions(1),),
    effect: [Share simple thoughts or feelings telepathically with a friendly creature you can see.

    You have #kw_advantage on checks to calm the anger or fear of creatures that hear you.],
    reminder: (keywords.advantage,),
)

#let bond_of_peace = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: The book gives no duration for either option. Both are read as lasting for one
exchange or conversation, at the GM's discretion.
*/
