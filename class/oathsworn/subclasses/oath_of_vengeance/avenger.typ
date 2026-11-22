#import "../../../../global.typ": *

#let ability_data = (
    name: "Avenger",
    type: ("Ability", "Oathsworn", "Oath of Vengeance"),
    blocks: (
      (kind: "passive", effect: [When you or an ally within your #kw_aura gains Wounds, set up to that many of your Judgment Dice to their maximum. Then move up to half your #speed for free.]),
    ),
    reminder: (keywords.aura,),
)

#let avenger = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
