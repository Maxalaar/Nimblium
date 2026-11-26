#import "/global.typ": *

#let ability_data = (
    name: "Dragon-folk",
    type: ("Ancestry",),
    blocks: (
      (kind: "passive", name: "Size", effect: [You are Medium.]),
      (kind: "narrative", name: "Appearance", effect: [A tall humanoid dragon covered in hard scales, with a horned head and a heavy tail.]),
      (kind: "active", name: "Fire Breath", cost: (actions(1),), limitation: per_encounter(1), effect: [Each creature in a Cone 3 makes a #DEX check against #dc(10, stat: KEY). If it fails, it takes #LVL+#KEY damage. If it succeeds, it takes half.]),
    ),
)

#let dragon_folk = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.23-27 (Dragonborn). Book: Draconic Heritage, +1 Armor, when you attack deal an additional LVL+KEY damage divided among your targets, recharges on a Safe Rest or a Wound; the changelog drops the armor-ignoring.

house-rule: The +1 Armor is dropped (balance pass, user ruling 2026-11-27). The extra damage on an attack becomes Fire Breath, a 1-action Cone 3
that deals LVL+KEY damage (half on a DEX check), KEY times per Rest, once per turn (user
ruling 2026-11-27).

house-rule: Uses: 1/encounter, as in the book, instead of KEY times per Rest and once per turn (user
ruling 2026-11-27). Later notes that say "KEY times per Rest" describe the older version.
*/
