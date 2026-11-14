#import "../../global.typ": *

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
    range: "4",
    effect: [Once per round, an ally within Range gains 1 action.\
    You may cast this spell outside your turn by spending #mana(1).],
    high_Levels: [This spell's Range increases by 2 at levels 5, 10, 15 and 20.],
)

#let hearts_fire = creat_spell(spell_data)