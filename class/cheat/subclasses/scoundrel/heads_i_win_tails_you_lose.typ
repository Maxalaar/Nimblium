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
        kind: "active",
        limitation: per_encounter(1),
        effect: [This round, your attacks don't miss and you crit on 1 less than normally needed. You gain #LVL temp #HP.],
      ),
    ),
)

#let heads_i_win_tails_you_lose = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
