#import "../../../global.typ": *

#let ability_data = (
    name: "Shadow Spear",
    type: ("Ability", "Shadowmancer", "Greater Invocation"),
    blocks: (
      (kind: "passive", effect: [Shadow Blast's Range is doubled and it ignores #kw_cover. It has #kw_advantage against #kw_prone targets instead of #kw_disadvantage. It also crits on a 1.]),
    ),
    reminder: (keywords.cover, keywords.advantage, keywords.disadvantage, conditions.prone),
)

#let shadow_spear = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Adds "Crits on a 1."

interpretation: "Crits on a 1" is kept as written: a roll of 1 on Shadow Blast's Primary Die
is a crit instead of a miss.
*/
