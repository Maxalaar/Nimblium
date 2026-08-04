#import "../../global.typ": *

#let ability_data = (
    name: "One with the Ancients",
    type: (
        "Ability",
        "Berserker",
    ),
    limitation: "1/Safe Rest",
    effect:[
      When faced with a decision about which direction or course of action to take, you can call upon your ancestors to guide you toward the most dangerous or challenging path.
    ],
)

#let one_with_the_ancients = creat_ability(ability_data)
