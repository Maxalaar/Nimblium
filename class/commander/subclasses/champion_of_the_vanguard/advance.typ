#import "../../../../global.typ": *

#let ability_data = (
    name: "Advance!",
    type: ("Ability", "Commander", "Champion of the Vanguard"),
    blocks: (
      (kind: "passive", limitation: per_round(1), effect: [After you move toward an enemy, your first melee attack against it has #kw_advantage.]),
      (kind: "passive", effect: [When you use #card_ref("Coordinated Strike!"), you and every ally within 12 spaces may first move up to half your #speed for free.]),
    ),
    reminder: (keywords.advantage,),
)

#let advance = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
