#import "/global.typ": *

#let ability_data = (
    name: "Bring Me Your Pain",
    type: ("Ability", "Oathsworn", "Oathbreaker"),
    blocks: (
      (kind: "active", cost: (actions(1),), limitation: per_round(1), effect: [When a willing ally within your #kw_aura would drop to 0 #HP, swap your #HP with its #HP. If your #HP is higher than its max #HP, it gains the difference as temp #HP. You drop to 0 #HP and gain the Wound instead of it.]),
    ),
    reminder: (keywords.aura,),
)

#let bring_me_your_pain = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.74 (level 3, a Reaction).
*/
