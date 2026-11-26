#import "/global.typ": *

#let ability_data = (
    name: "Quick Wit",
    type: ("Ability", "Songweaver"),
    blocks: (
      (kind: "passive", effect: [When you roll Initiative, you regain 2 spent #card_ref("Inspiration") charges. Those you haven't spent are lost when combat ends.]),
    ),
)

#let quick_wit = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
