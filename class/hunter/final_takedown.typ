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
        cost: ("1 Action", "1 TotH charge"),
        effect: [Make a melee attack against your #keyword_style[Bloodied] quarry. Turn it into a crit and double the damage of your Hunter's Mark. If they survive, they crit you back.],
      ),
    ),
    reminder: (conditions.bloodied,),
)

#let final_takedown = creat_ability(ability_data)
