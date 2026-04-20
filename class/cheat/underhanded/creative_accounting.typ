#import "../../../global.typ": *

#let ability_data = (
    name: "Creative Accounting",
    type: (
        "Ability",
        "Cheat",
        "Underhanded",
    ),
    effect:[Gain up to INT actions immediately. The next time you would gain actions, reduce that amount by the number stolen. Cannot be used on consecutive turns.],
)

#let creative_accounting = creat_ability(ability_data)