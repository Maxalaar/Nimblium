#import "/global.typ": *

#let ability_data = (
    name: "Burning Palm",
    type: ("Ability", "Zephyr", "Way of Flame"),
    blocks: (
      (kind: "passive", effect: [When your unarmed strike crits, the target is #kw_smoldering.]),
      (kind: "passive", effect: [Against a #kw_smoldering creature, you may double the effects of the #card_ref("Momentum", "Mom") charges you spend. If you do, its Smoldering ends.]),
    ),
    reminder: (conditions.smoldering,),
)

#let burning_palm = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: the 2026-10-02 changelog (level 7, replaces Blazing Speed).
*/
