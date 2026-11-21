#import "../../../global.typ": *

#let spell_data = (
    name: "False Face",
    type: ("Spell", "Necrotic", "Utility"),
    casting_time: "1 min",
    effect: [For 10 minutes, you look like someone else. You need a piece of them to cast this spell.],
)

#let false_face = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
