#import "../../global.typ": *

#let ability_data = (
    name: "Dire Shadows",
    type: ("Ability", "Shadowmancer"),
    blocks: (
      (kind: "passive", effect: [Attacks against your #card_ref("Shadow", "Shadows") have #kw_disadvantage. Your #card_ref("Shadow", "Shadows") take no damage when they succeed on a save.]),
    ),
    reminder: (keywords.disadvantage,),
)

#let dire_shadows = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: Minions die from any damage, so a Shadow that succeeds on a save now
survives it.
*/
