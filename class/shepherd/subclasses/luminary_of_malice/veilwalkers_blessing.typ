#import "../../../../global.typ": *

#let ability_data = (
    name: "Veilwalker's Blessing",
    type: (
        "Ability",
        "Shepherd",
        "Luminary of Malice",
    ),
    blocks: (
      (
        kind: "active",
        cost: ("Reaction",),
        limitation: "1/Safe Rest",
        effect: [When you would drop to 0 HP, drop to 1 HP instead and force an enemy within 6 spaces to make a STR save. On a failure, they become #keyword_style[Bloodied], or if they are already #keyword_style[Bloodied], they drop to 0 HP.],
      ),
    ),
    reminder: (conditions.bloodied,),
)

#let veilwalkers_blessing = creat_ability(ability_data)
