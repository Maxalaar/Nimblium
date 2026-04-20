#import "../../global.typ": *

#let ability_data = (
    name: "Thrill of the Hunt",
    type: (
        "Ability",
        "Hunter",
    ),
    effect:[
        \
        Gain a charge to use Thrill of the Hunt abilities (TotH) during that encounter whenever:\
        • Your quarry dies.\
        • You hit your quarry in melee.\
        • You crit your quarry at range.\
        Unused charges are lost when combat ends.
    ],
)

#let thrill_of_the_hunt = creat_ability(ability_data)