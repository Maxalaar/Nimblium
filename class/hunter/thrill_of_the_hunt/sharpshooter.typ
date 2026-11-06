#import "../../../global.typ": *

#let ability_data = (
    name: "Sharpshooter",
    type: (
        "Ability",
        "Hunter",
        thrill_of_the_hunt
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(1), toth_charges(1)),
        effect: [If you have not moved this turn and a #kw_marked creature is 4 or more spaces away, attack them for double damage.],
      ),
    ),
    reminder: (hunter_keywords.marked,),
)

#let sharpshooter = creat_ability(ability_data)
