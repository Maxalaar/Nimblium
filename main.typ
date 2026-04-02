#import "creat_card_frame.typ": creat_card_frame
#import "creat_card_spell.typ": creat_card_spell

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

#creat_card_spell(
    hearts_fire
)