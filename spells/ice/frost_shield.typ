#import "../../global.typ": *

#let spell_data = (
    name: "Frost Shield",
    type: (
        "Spell",
        "Ice",
        "Tier 1",
    ),
    cost: (
        "1 Action",
        "1 Mana",
    ),
    reaction: "When attacked, Gain 2×KEY temp HP and Defend for free. The ice melts and these temp HP are lost at the start of your next turn.",
    upcast: "+2×KEY temp HP.",
)

#let frost_shield = creat_spell(spell_data)