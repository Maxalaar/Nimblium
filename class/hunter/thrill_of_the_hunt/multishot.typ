#import "../../../global.typ": *

#let ability_data = (
    name: "Multishot",
    type: (
        "Ability",
        "Hunter",
        thrill_of_the_hunt
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(1), toth_charges(1)),
        effect: [Attack a #kw_marked creature at half range with a ranged weapon. Choose a second target within 2 spaces of the first, they take the same amount of damage.],
      ),
    ),
    reminder: (hunter_keywords.marked,),
)

#let multishot = creat_ability(ability_data)
