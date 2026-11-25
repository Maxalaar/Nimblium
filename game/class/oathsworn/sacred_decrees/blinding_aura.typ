#import "/global.typ": *

#let ability_data = (
    name: "Blinding Aura",
    type: ("Ability", "Oathsworn", "Sacred Decree"),
    blocks: (
      (kind: "active", cost: (actions(1),), limitation: per_safe_rest(1), effect: [Enemies within your #kw_aura are #kw_blind until the end of their next turn.]),
    ),
    reminder: (keywords.aura, conditions.blind,),
)

#let blinding_aura = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
