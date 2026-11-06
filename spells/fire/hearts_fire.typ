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
    effect: "Once per round, give an ally within Range an extra action. Spend 1 mana to cast this when it is not your turn.",
    high_Levels: "+2 Range every 5 levels.",
)

#let hearts_fire = creat_spell(spell_data)