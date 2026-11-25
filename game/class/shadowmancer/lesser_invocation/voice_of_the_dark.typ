#import "/global.typ": *

#let ability_data = (
    name: "Voice of the Dark",
    type: ("Ability", "Shadowmancer", "Lesser Invocation"),
    blocks: (
      (kind: "narrative", effect: [You can speak telepathically with a humanoid within 6 spaces of you.]),
    ),
)

#let voice_of_the_dark = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
