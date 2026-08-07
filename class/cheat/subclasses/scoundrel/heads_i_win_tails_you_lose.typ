#import "../../../../global.typ": *

#let ability_data = (
    name: "Heads I Win, Tails You Lose",
    type: (
        "Ability",
        "Cheat",
        "Scoundrel",
    ),
    blocks: (
      (
        kind: "passive",
        limitation: "1/encounter",
        effect: [Attacks you make this round don't miss, you crit on 1 less than normally needed, and you gain LVL temp HP.],
      ),
    ),
)

#let heads_i_win_tails_you_lose = creat_ability(ability_data)
