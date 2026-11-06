#import "../../global.typ": *

#let spell_data = (
    name: "Zap",
    type: (
        "Spell",
        "Lightning",
        "Cantrip",
    ),
    cost: (
        actions(1),
    ),
    range: "12",
    damage: "2d8",
    effect: [On miss: The lightning fails to find ground and strikes you instead.],
    high_Levels: [+4 damage every 5 levels, on hit only.],
    reminder: (conditions.charged,),
)

#let zap = creat_spell(spell_data)
