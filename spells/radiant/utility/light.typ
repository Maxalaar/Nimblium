#import "../../../global.typ": *

#let spell_data = (
    name: "Light",
    type: ("Spell", "Radiant", "Utility"),
    cost: (actions(1),),
    effect: [An item glows as brightly as a torch for as long as you hold it.],
)

#let light = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
