#import "../../../global.typ": *

#let ability_data = (
    name: "Pinning Shot",
    type: (
        "Ability",
        "Hunter",
        thrill_of_the_hunt
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(3), toth_charges(1)),
        effect: [Shoot a #kw_marked creature. They are #kw_restrained until they can escape #dc(10, stat: WIL).],
      ),
    ),
    reminder: (hunter_keywords.marked, conditions.restrained,),
)

#let pinning_shot = creat_ability(ability_data)
