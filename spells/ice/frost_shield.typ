#import "../../global.typ": *

#let spell_data = (
    name: "Frost Shield",
    type: (
        "Spell",
        "Ice",
        "Tier 1",
    ),
    cost: (
        mana(1),
    ),
    effect: [Once per round, you may cast this spell while Defending. You gain #times(2, KEY) temp #HP. You lose them at the start of your next turn.],
    upcast: [+5 temp #HP.],
)

#let frost_shield = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
