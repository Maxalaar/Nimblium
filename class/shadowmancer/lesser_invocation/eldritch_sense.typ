#import "../../../global.typ": *

#let ability_data = (
    name: "Eldritch Sense",
    type: ("Ability", "Shadowmancer", "Lesser Invocation"),
    blocks: (
      (kind: "narrative", effect: [You sense the presence of any shapechanger or creature hidden by magic within 6 spaces of you.]),
    ),
)

#let eldritch_sense = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
