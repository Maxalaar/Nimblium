#import "../../../global.typ": *

#let ability_data = (
    name: "Heavy Strike",
    type: ("Ability", "Commander", "Combat Tactic"),
    blocks: (
      (kind: "active", cost: (combat_dice_cost(1),), effect: [When you hit, the target suffers #kw_knockback #STR and takes extra damage equal to a roll of your Combat Die.]),
    ),
    reminder: (keywords.knockback,),
)

#let heavy_strike = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: "knockback your target STR spaces"; the per-size distances are gone.
*/
