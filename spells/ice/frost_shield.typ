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
    effect: [Once per round, you may cast this spell while Defending. Gain #times(2, KEY) temp #HP. The ice melts and these temp #HP are lost at the start of your next turn.],
    upcast: [+#times(2, KEY) temp #HP.],
)

#let frost_shield = creat_spell(spell_data)