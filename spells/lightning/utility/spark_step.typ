#import "../../../global.typ": *

#let spell_data = (
    name: "Spark Step",
    type: ("Spell", "Lightning", "Utility"),
    cost: (actions(1),),
    range: "4",
    effect: [Teleport to a metal object within Range.],
)

#let spark_step = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
