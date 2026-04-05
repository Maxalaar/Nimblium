#import "../../global.typ": *

#let spell_data = (
    name: "Heart's Fire",
    type: (
        "Spell",
        "Fire",
        "Cantrip",
    ),
    cost: (
        "1 Action",
    ),
    range: "4",
    effect: "Give an ally within Range an extra action. Spend 1 mana to cast this when it is not your turn.",
    high_Levels: "+1 Range every 5 levels.",
)

#let hearts_fire = creat_spell(spell_data)