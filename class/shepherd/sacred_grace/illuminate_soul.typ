#import "../../../global.typ": *

#let ability_data = (
    name: "Illuminate Soul",
    type: (
        "Ability",
        "Shepherd",
        "Sacred Grace",
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(1),),
        limitation: per_safe_rest(WIL),
        effect: [Choose a creature within 6 spaces, then choose advantage or disadvantage. Until the start of your next turn, attacks against that creature have the chosen one.],
      ),
    ),
)

#let illuminate_soul = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: The 2026-10-02 changelog version of this card is not applied. See the companion
house rule in class/shepherd/mod.typ.
*/
