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
        cost: (actions(1),),
        limitation: per_safe_rest(1),
        effect: [When you would drop to 0 #HP, drop to 1 #HP instead and force an enemy within 6 spaces to make a #STR save. On a failure, they become #kw_bloodied, or if they are already #kw_bloodied, they drop to 0 #HP.],
      ),
    ),
    reminder: (conditions.bloodied,),
)

#let veilwalkers_blessing = creat_ability(ability_data)
