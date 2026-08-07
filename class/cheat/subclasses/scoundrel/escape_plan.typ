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
        limitation: "1/safe rest",
        effect: [When you would drop to 0 HP or gain a Wound, you don't. Instead, you turn #keyword_style[Invisible] for 1 minute or until you attack.],
      ),
    ),
    reminder: (conditions.invisible,),
)

#let escape_plan = creat_ability(ability_data)
