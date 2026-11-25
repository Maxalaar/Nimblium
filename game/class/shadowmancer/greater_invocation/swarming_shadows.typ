#import "/global.typ": *

#let ability_data = (
    name: "Swarming Shadows",
    type: ("Ability", "Shadowmancer", "Greater Invocation"),
    blocks: (
      (kind: "passive", effect: [When one of your #card_ref("Shadow", "Shadows") rolls the maximum on its damage, summon 1 #card_ref("Shadow") adjacent to the target. It ignores your #card_ref("Shadow") limit.]),
    ),
)

#let swarming_shadows = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Triggers when a Shadow "rolls the max" (was: would crit); ignores your Shadow
Limit. Vengeful Blast is removed from the list.
*/
