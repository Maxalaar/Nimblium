#import "/global.typ": *

#let ability_data = (
    name: "Swift Deployment",
    type: ("Ability", "Commander", "Commander's Order"),
    blocks: (
      (kind: "passive", effect: [When combat starts, you and an ally within 18 spaces have +3 #speed for 1 round.]),
    ),
)

#let swift_deployment = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: Renamed from "Move it! Move it!" (user ruling 2026-11-28): card names are sober and
say what the card does, never a line a character would say.

house-rule: No Advantage on Initiative (no Initiative, user ruling 2026-11-28). The card keeps its +3 speed.
*/
