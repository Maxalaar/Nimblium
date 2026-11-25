#import "/global.typ": *

#let spell_data = (
    name: "Wintry Scrying",
    type: ("Spell", "Ice", "Utility"),
    casting_time: "1 min",
    effect: [Turn a small patch of water into an icy mirror. For 10 minutes, it shows you any place you choose near the same body of water.],
)

#let wintry_scrying = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Casting time 10 minutes -> 1 minute.
*/
