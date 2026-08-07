#import "../../../global.typ": *

#let ability_data = (
    name: "Steal Tempo",
    type: (
        "Ability",
        "Cheat",
        "Underhanded",
    ),
    blocks: (
      (kind: "passive", effect: [When you critically hit a target for the second time in a turn, the target loses 1 action and you gain 1 action.]),
    ),
)

#let steal_tempo = creat_ability(ability_data)
