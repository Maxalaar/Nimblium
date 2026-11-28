#import "/global.typ": *

#let ability_data = (
    name: "Bloodied Focus",
    type: ("Ability", "Zephyr", "Way of Pain"),
    blocks: (
      (kind: "passive", effect: [While you are #kw_bloodied, your attacks and checks have #kw_advantage.]),
    ),
    reminder: (conditions.bloodied,),
)

#let bloodied_focus = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.71 and the 2026-10-02 changelog (level 11: "While you are Bloodied, gain
advantage"; was: on your first attack each turn and on saves).

interpretation: "Gain advantage" applies to your attacks and checks.

interpretation: Renamed from "Pain Sharpens the Mind" (user ruling 2026-11-28): card names are sober and
say what the card does, never a line a character would say.
*/
