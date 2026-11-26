#import "/global.typ": *

#let spell_data = (
    name: "Heart's Fire",
    type: (
        "Spell",
        "Fire",
        "Cantrip",
    ),
    cost: (
        actions(1),
    ),
    range: "—",
    effect: [Once per round, an ally within Range gains 1 action.

    You may cast this spell outside your turn by spending #mana(1).],
    levels: [
      *Level 1:* Range 4.\
      *Level 5:* Range 6.\
      *Level 10:* Range 8.\
      *Level 15:* Range 10.\
      *Level 20:* Range 12.
    ],
)

#let hearts_fire = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
