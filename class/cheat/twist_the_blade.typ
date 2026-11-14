#import "../../global.typ": *

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
        effect: [Change one of your Sneak Attack dice to whatever you like.],
      ),
      (
        kind: "active",
        limitation: per_turn(1),
        effect: [*Level 13:* Use Twist the Blade for free.],
      ),
    ),
)

#let twist_the_blade = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
