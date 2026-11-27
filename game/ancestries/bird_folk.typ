#import "/global.typ": *

#let ability_data = (
    name: "Bird-folk",
    type: ("Ancestry",),
    blocks: (
      (kind: "passive", name: "Size", effect: [When you choose this ancestry, choose Small or Medium. You can't change it later.]),
      (kind: "narrative", name: "Appearance", effect: [A humanoid bird with feathers, a beak and wings, whose bones are light and hollow.]),
      (kind: "passive", name: "Wings", effect: [You are #kw_flying while you wear Cloth armor, Leather armor or no armor. Your Vitality decreases by 2.]),
    ),
    reminder: (keywords.flying,),
)

#let bird_folk = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.23-27 (Birdfolk). Book: Hollow Bones, a fly Speed while wearing armor no heavier than Leather, crits against you are Vicious, forced movement twice as far (changelog: only while flying).

interpretation: Knockback twice as far while flying is already the Flying keyword.

house-rule: −2 Vitality instead of a crit against you rolling 1 more die: a light, hollow-boned
body (user ruling 2026-11-27).
*/
