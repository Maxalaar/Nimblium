#import "/global.typ": *

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
        effect: [When a creature dies from your #card_ref("Sneak Attack"), you may become #kw_invisible until you attack again or until the start of your next turn.],
      ),
    ),
    reminder: (conditions.invisible,),
)

#let amidst_all_this_commotion = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
