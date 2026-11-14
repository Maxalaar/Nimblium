#import "../../../global.typ": *

#let ability_data = (
    name: "Addling Arrow",
    type: (
        "Ability",
        "Hunter",
        thrill_of_the_hunt,
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(1), toth_charges(1),),
        effect: [Attack with a ranged weapon. The target's next attack must be against the closest other creature. If several creatures are equally close, one of them is chosen at random.],
      ),
    ),
)

#let addling_arrow = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
