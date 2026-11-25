#import "/global.typ": *

#let ability_data = (
    name: "Aura of Zeal",
    type: ("Ability", "Oathsworn", "Oath of Vengeance"),
    blocks: (
      (kind: "passive", effect: [When you roll Judgment Dice, roll 1 more.]),
      (kind: "passive", effect: [You have an #kw_aura with a Reach of 4. #card_ref("Radiant Judgment") also triggers when an ally within your #kw_aura is attacked while you have no Judgment Dice.]),
    ),
    reminder: (keywords.aura,),
)

#let aura_of_zeal = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
