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
        cost: ("1 Action",),
        limitation: ("1/turn"),
        effect: [
            Change one of your Sneak Attack dice to whatever you like.\
            *Level 13:* You can Twist the Blade for free.
          ],
      ),
    ),
)

#let twist_the_blade = creat_ability(ability_data)
