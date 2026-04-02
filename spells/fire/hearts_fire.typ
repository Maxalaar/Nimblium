#import "../../card_structure/creat_spell.typ": creat_spell

#let hearts_fire = (
    name: "Heart's Fire",
    type: (
        "Spell",
        "Cantrip",
    ),
    cost: (
        "1 Action",
    ),
    range: "4",
    effect: "Give an ally within Range an extra action. Spend 1 mana to cast this when it is not your turn.",
    high_Levels: "+1 Range every 5 levels.",
)

#let creat_hearts_fire = creat_spell(hearts_fire)