#import "/global.typ": *

#let ability_data = (
    name: "Wyrd-folk",
    type: ("Ancestry",),
    blocks: (
      (kind: "passive", name: "Size", effect: [You are Small.]),
      (kind: "narrative", name: "Appearance", effect: [A small humanoid crackling with stray magic, whose skin glows with shifting arcane marks.]),
      (kind: "active", name: "Wild Spark", limitation: per_encounter(2), effect: [When you or a willing ally within 6 spaces casts a tiered spell, that creature may #kw_invoke_chaos.]),
    ),
    reminder: (mage_keywords.invoke_chaos,),
)

#let wyrd_folk = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.23-27 (Wyrdling). Book: Chaotic Surge, when you or a willing ally within Reach 6 casts a tiered spell, you may allow them to roll on the Chaos Table, 1/encounter.

house-rule: KEY times per Rest, once per turn (book: 1/encounter).

house-rule: Uses: 1/encounter, as in the book, instead of KEY times per Rest and once per turn (user
ruling 2026-11-27). Later notes that say "KEY times per Rest" describe the older version.

house-rule: 2/encounter: a small reactive effect (user ruling 2026-11-27).
*/
