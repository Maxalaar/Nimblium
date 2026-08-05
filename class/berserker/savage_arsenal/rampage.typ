#import "../../../global.typ": *

#let ability_data = (
    name: "Rampage",
    type: (
        "Ability",
        "Berserker",
        "Savage Arsenal",
    ),
    blocks: (
      (
        kind: "active",
        limitation: "1/turn",
        effect: [After you hit, you may treat your next attack this turn as if you rolled that same amount instead of rolling again.],
      ),
    ),
)

#let rampage = creat_ability(ability_data)
