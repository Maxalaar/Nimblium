#import "../../global.typ": *

#let ability_data = (
    name: "Cheat",
    type: (
        "Ability",
        "Cheat",
    ),
    effect:[
      \
      • 1/round: You may either Move for free.\
      • 1/day: You may change any skill check result to 10+INT.\
      • If you roll less than 10 on Initiative, you may change it to 10 instead.\
      • You may gain advantage on skill checks while playing any games, competitions, or placing wagers.
      ],
)

#let cheat = creat_ability(ability_data)