#import "../../../global.typ": *

#let ability_data = (
    name: "Snare Trap",
    type: (
        "Ability",
        "Hunter",
        thrill_of_the_hunt
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(1), toth_charges(1)),
        limitation: per_encounter(1),
        effect: [When a creature moves adjacent to you or to an ally within 6 spaces, move it back 1 space. It is #kw_restrained until it escapes with a #dc(10, stat: WIL) check.],
      ),
    ),
    reminder: (conditions.restrained,),
)

#let snare_trap = creat_ability(ability_data)


