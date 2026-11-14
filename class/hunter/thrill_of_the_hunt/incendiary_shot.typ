#import "../../../global.typ": *

#let ability_data = (
    name: "Incendiary Shot",
    type: (
        "Ability",
        "Hunter",
        thrill_of_the_hunt,
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(1), toth_charges(1),),
        effect: [Attack with a ranged weapon at half its range. The attack deals #times(WIL, "d8") additional fire damage.],
      ),
    ),
)

#let incendiary_shot = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
