#import "../../../../global.typ": *

#let ability_data = (
    name: "Escape Plan",
    type: (
        "Ability",
        "Cheat",
        "Scoundrel",
    ),
    blocks: (
      (
        kind: "passive",
        limitation: per_safe_rest(1),
        effect: [When you would drop to 0 #HP or gain a Wound, you don't. Instead, you turn #kw_invisible for 1 minute or until you attack.],
      ),
    ),
    reminder: (conditions.invisible,),
)

#let escape_plan = creat_ability(ability_data)
