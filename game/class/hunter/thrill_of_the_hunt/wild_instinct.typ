#import "/global.typ": *

#let ability_data = (
    name: "Wild Instinct",
    type: (
        "Ability",
        "Hunter",
        thrill_of_the_hunt,
    ),
    blocks: (
      (
        kind: "active",
        limitation: per_round(1),
        effect: [While you have no #TotH charges, the next #primary_die rolled against a creature this round gets~+1.

        While you have no #TotH charges, every #primary_die rolled against you this round gets~−1.],
      ),
    ),
)

#let wild_instinct = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: Assess is removed from the game. Wild Instinct keeps its two combat effects
(Create an Opening, Anticipate Danger) without a roll; the book rolled them with advantage.
*/
