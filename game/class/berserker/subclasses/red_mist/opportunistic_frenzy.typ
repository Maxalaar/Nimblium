#import "/global.typ": *

#let ability_data = (
    name: "Opportunistic Frenzy",
    type: (
        "Ability",
        "Berserker",
        "Red Mist",
    ),
    blocks: (
      (kind: "passive", effect: [While you are #kw_raging, your opportunity attacks don't have #kw_disadvantage.]),
      (
        kind: "active",
        cost: (actions(1),),
        limitation: per_round(1),
        effect: [While you are #kw_raging, when an enemy enters your melee weapon's Reach, make an opportunity attack against it.],
      ),
    ),
    reminder: (berserker_keywords.raging,),
)

#let opportunistic_frenzy = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
