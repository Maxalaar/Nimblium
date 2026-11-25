#import "/global.typ": *

#let ability_data = (
    name: "Devoted Acolyte",
    type: ("Ability", "Shadowmancer", "Lesser Invocation"),
    blocks: (
      (kind: "narrative", effect: [You learn 2 languages among Celestial, Draconic, Deep Speak, Infernal and Primordial. You have #kw_advantage on Lore checks about those 2 languages.]),
    ),
    reminder: (keywords.advantage,),
)

#let devoted_acolyte = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
