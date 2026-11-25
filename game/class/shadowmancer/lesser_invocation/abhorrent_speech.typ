#import "/global.typ": *

#let ability_data = (
    name: "Abhorrent Speech",
    type: ("Ability", "Shadowmancer", "Lesser Invocation"),
    blocks: (
      (kind: "narrative", effect: [You can communicate with horrible creatures, such as aberrations and undead.]),
    ),
)

#let abhorrent_speech = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
