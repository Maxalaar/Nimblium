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
        effect: [Make a melee attack against a #keyword_style[Bloodied] #keyword_style[Marked] creature. Turn it into a crit and double the damage of your Hunter's Mark. If they survive, they crit you back.],
      ),
    ),
    reminder: (hunter_keywords.marked, conditions.bloodied,),
)

#let final_takedown = creat_ability(ability_data)
