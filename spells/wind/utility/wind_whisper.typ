#import "../../../global.typ": *

#let spell_data = (
    name: "Wind Whisper",
    type: ("Spell", "Wind", "Utility"),
    cost: (actions(1),),
    effect: [Whisper a message into the wind. It is secretly carried to a creature you choose, anywhere the wind could reach.],
)

#let wind_whisper = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: The 100-mile limit is removed; it is now "anywhere wind could reach".
*/
