#import "/global.typ": *

#let ability_data = (
    name: "Otherworldly Might",
    type: ("Ability", "Shadowmancer", "Reaver"),
    blocks: (
      (kind: "passive", effect: [While you have at least 1 #card_ref("Shadow"), you have #kw_advantage on #STR checks to keep your #kw_concentration.]),
    ),
    reminder: (keywords.concentration, keywords.advantage,),
)

#let otherworldly_might = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.78 (level 11: advantage on concentration checks).
*/
