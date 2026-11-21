#import "../../../global.typ": *

#let ability_data = (
    name: "Knowledge from Beyond",
    type: ("Ability", "Shadowmancer", "Lesser Invocation"),
    blocks: (
      (kind: "narrative", effect: [When you fail an Insight or Arcana check, you may gain 1 Wound to succeed instead.]),
    ),
)

#let knowledge_from_beyond = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
