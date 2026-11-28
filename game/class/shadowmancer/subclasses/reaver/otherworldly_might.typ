#import "/global.typ": *

#let ability_data = (
    name: "Otherworldly Might",
    type: ("Ability", "Shadowmancer", "Reaver"),
    blocks: (
      (kind: "passive", effect: [While you have at least 1 #card_ref("Shadow"), the first critical hit you take each round doesn't end your #kw_concentration.]),
    ),
    reminder: (keywords.concentration,),
)

#let otherworldly_might = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.78 (level 11: advantage on concentration checks).

house-rule: Concentration ends on a critical hit with no roll (user ruling 2026-11-28), so the
advantage on Concentration checks becomes: the first critical hit you take each round doesn't
end your Concentration, still while you have a Shadow (user ruling 2026-11-28).
*/
