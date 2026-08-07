#import "../../global.typ": *

#let ability_data = (
    name: "Nemesis",
    type: (
        "Ability",
        "Hunter",
    ),
    blocks: (
      (kind: "passive", effect: [Your Hunter's Mark can target any number of creatures simultaneously.]),
    ),
)

#let nemesis = creat_ability(ability_data)
