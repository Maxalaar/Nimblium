#import "/global.typ": *

#let ability_data = (
    name: "We All Suffer",
    type: ("Ability", "Oathsworn", "Oathbreaker"),
    blocks: (
      (kind: "passive", effect: [You can have 2 more Wounds before you die.]),
      (kind: "passive", effect: [When an ally within your #kw_aura would gain Wounds or fail a check, you may suffer that effect instead. If you do, #card_ref("Radiant Judgment") triggers.]),
    ),
    reminder: (keywords.aura,),
)

#let we_all_suffer = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.74 (level 3).

house-rule: There are no saves: "fail a save" becomes "fail a check".
*/
