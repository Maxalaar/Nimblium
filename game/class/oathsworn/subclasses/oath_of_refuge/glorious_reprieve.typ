#import "/global.typ": *

#let ability_data = (
    name: "Glorious Reprieve",
    type: ("Ability", "Oathsworn", "Oath of Refuge"),
    blocks: (
      (kind: "passive", effect: [You and allies within your #kw_aura don't lose actions from being #kw_dying.]),
      (kind: "passive", limitation: per_round(1), effect: [You or an ally within your #kw_aura can ignore 1 Wound gained while #kw_dying.]),
    ),
    reminder: (keywords.aura, conditions.dying,),
)

#let glorious_reprieve = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Was "can't drop below 1 HP, gain 1 Wound instead" -> no lost actions while Dying,
and 1/round ignore 1 Wound gained while Dying.
*/
