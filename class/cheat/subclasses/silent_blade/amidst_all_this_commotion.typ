#import "../../../../global.typ": *

#let ability_data = (
    name: "Amidst All This Commotion…",
    type: (
        "Ability",
        "Cheat",
        "Silent Blade",
    ),
    blocks: (
      (
        kind: "passive",
        effect: [If a creature dies while you Sneak Attack, you may turn #kw_invisible until you attack again or until the beginning of your next turn.],
      ),
    ),
    reminder: (conditions.invisible,),
)

#let amidst_all_this_commotion = creat_ability(ability_data)