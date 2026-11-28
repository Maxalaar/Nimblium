#import "/global.typ": *

#let ability_data = (
    name: "Taunting Interpose",
    type: ("Ability", "Oathsworn", "Oath of Refuge"),
    blocks: (
      (kind: "passive", effect: [When you #kw_interpose, the attacking enemy is also #kw_taunted by you until the end of its next turn.]),
    ),
    reminder: (keywords.interpose, conditions.taunted),
)

#let taunting_interpose = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: Renamed from "Face Me, Foul Creature!" (user ruling 2026-11-28): card names are sober and
say what the card does, never a line a character would say.
*/
