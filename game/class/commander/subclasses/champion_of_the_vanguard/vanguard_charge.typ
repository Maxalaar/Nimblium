#import "/global.typ": *

#let ability_data = (
    name: "Vanguard Charge",
    type: ("Ability", "Commander", "Champion of the Vanguard"),
    blocks: (
      (kind: "passive", limitation: per_round(1), effect: [After you move toward an enemy, your first melee attack against it has #kw_advantage.]),
      (kind: "passive", effect: [When you use #card_ref("Coordinated Strike"), you and every ally within 12 spaces may first move up to half your #speed for free.]),
    ),
    reminder: (keywords.advantage,),
)

#let vanguard_charge = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: Renamed from "Advance!" (user ruling 2026-11-28): card names are sober and
say what the card does, never a line a character would say.
*/
