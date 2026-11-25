#import "/global.typ": *

#let ability_data = (
    name: "Hungering Shadows",
    type: ("Ability", "Shadowmancer", "Greater Invocation"),
    blocks: (
      (kind: "passive", effect: [When one of your #card_ref("Shadow", "Shadows") rolls the maximum on its damage, the next tiered spell you cast this encounter doesn't use #card_ref("Pilfered Power").]),
    ),
)

#let hungering_shadows = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Triggers when a Shadow "rolls the max" (was: would crit; minions don't crit).
*/
