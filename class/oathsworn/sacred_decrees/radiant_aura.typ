#import "../../../global.typ": *

#let ability_data = (
    name: "Radiant Aura",
    type: ("Ability", "Oathsworn", "Sacred Decree"),
    blocks: (
      (kind: "active", cost: (actions(1),), limitation: per_safe_rest(WIL), effect: [End one harmful condition or effect on yourself or on a willing creature within your #kw_aura. Ending #kw_dying gives it 1 #HP, ending #kw_dazed gives it 1 action.]),
    ),
    reminder: (keywords.aura, conditions.dying, conditions.dazed),
)

#let radiant_aura = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
