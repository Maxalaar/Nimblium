#import "/global.typ": *

#let ability_data = (
    name: "Captive",
    type: ("Background",),
    blocks: (
      (kind: "narrative", effect: [You spent years in chains, as a slave, a prisoner or a gladiator. You learned to endure pain, hunger and humiliation without breaking. Someday you escaped, or someone set you free. To you, the world belongs to those who hold the keys, and freedom is worth any price.]),
      (kind: "passive", name: "Pain Tolerance", limitation: per_encounter(1), effect: [When you become #kw_bloodied, you gain #LVL+#KEY temp #HP.]),
    ),
    reminder: (conditions.bloodied,),
)

#let captive = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: Nimblium's own background, not from the book: backgrounds are where you grew up,
with one small effect tied to that origin (user ruling 2026-11-28).
*/
