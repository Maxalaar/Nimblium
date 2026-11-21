#import "../../../global.typ": *

#let ability_data = (
    name: "One with Shadows",
    type: ("Ability", "Shadowmancer", "Greater Invocation"),
    blocks: (
      (kind: "active", cost: (actions(1),), effect: [While you are in dim light or darkness, or adjacent to one of your #card_ref("Shadow", "Shadows"), you become #kw_invisible until you move or attack. Summoning or commanding #card_ref("Shadow", "Shadows") doesn't count as attacking.]),
    ),
    reminder: (conditions.invisible,),
)

#let one_with_shadows = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Also works while adjacent to a Shadow; summoning or commanding minions doesn't
count as attacking.
*/
