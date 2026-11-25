#import "/global.typ": *

#let ability_data = (
    name: "Heart of Burning Fire",
    type: ("Ability", "Shadowmancer", "Pact of the Red Dragon"),
    blocks: (
      (kind: "passive", effect: [When you roll Initiative, regain 1 use of #card_ref("Pilfered Power"). It is lost at the end of combat if you haven't used it.]),
    ),
)

#let heart_of_burning_fire = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
