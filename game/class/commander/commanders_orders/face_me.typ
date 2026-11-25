#import "/global.typ": *

#let ability_data = (
    name: "Face Me!",
    type: ("Ability", "Commander", "Commander's Order"),
    blocks: (
      (kind: "active", limitation: per_round(1), effect: [When an ally within 12 spaces is crit, or when an enemy attacks a #kw_dying ally, #kw_taunt that enemy until you drop to 0 #HP.]),
    ),
    reminder: (conditions.taunted, conditions.dying),
)

#let face_me = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Costs 0 actions and also triggers when an enemy attacks a Dying ally (was: a
Reaction after an ally within 12 spaces is crit). No cost badge; 1/round as for any reaction.
*/
