#import "/global.typ": *

#let ability_data = (
    name: "Twist the Blade",
    type: (
        "Ability",
        "Cheat",
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(1),),
        effect: [Change one of your #card_ref("Sneak Attack") dice to whatever you like.],
      ),
    ),
    high_Levels: [*Level 13:* Once per turn, it costs no action.],
)

#let twist_the_blade = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
