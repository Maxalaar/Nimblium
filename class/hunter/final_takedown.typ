#import "../../global.typ": *

#let ability_data = (
    name: "Final Takedown",
    type: (
        "Ability",
        "Hunter",
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(1), toth_charges(1)),
        effect: [Make a melee attack against a #kw_bloodied #kw_marked creature. Turn it into a crit and double the damage of your Hunter's Mark. If they survive, they crit you back.],
      ),
    ),
    reminder: (hunter_keywords.marked, conditions.bloodied,),
)

#let final_takedown = creat_ability(ability_data)
