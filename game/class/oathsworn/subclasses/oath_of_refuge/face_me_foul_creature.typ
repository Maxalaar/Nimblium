#import "/global.typ": *

#let ability_data = (
    name: "Face Me, Foul Creature!",
    type: ("Ability", "Oathsworn", "Oath of Refuge"),
    blocks: (
      (kind: "passive", effect: [When you #kw_interpose, the attacking enemy is also #kw_taunted by you until the end of its next turn.]),
    ),
    reminder: (keywords.interpose, conditions.taunted),
)

#let face_me_foul_creature = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
