#import "/global.typ": *

#let ability_data = (
    name: "Low Blow",
    type: (
        "Ability",
        "Cheat",
        "Scoundrel",
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(1),),
        effect: [
          When you #card_ref("Sneak Attack") a creature that isn't #kw_taunted by you, roll 1d4.\
          *1:* It is #kw_taunted by you until the end of the encounter.\
          *2:* It falls #kw_prone, then it is #kw_taunted by you until the end of the encounter.\
          *3:* It becomes #kw_dazed, then it is #kw_taunted by you until the end of the encounter.\
          *4:* It is #kw_incapacitated until the end of the next hero's turn.
        ],
      ),
    ),
    reminder: (conditions.taunted, conditions.prone, conditions.dazed, conditions.incapacitated,),
)

#let low_blow = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: The changelog lists the four results without numbers. Results 1 to 4 follow
its order.
*/
