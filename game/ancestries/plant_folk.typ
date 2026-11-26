#import "/global.typ": *

#let ability_data = (
    name: "Plant-folk",
    type: ("Ancestry",),
    blocks: (
      (kind: "passive", name: "Size", effect: [When you choose this ancestry, choose Small or Medium. You can't change it later.]),
      (kind: "narrative", name: "Appearance", effect: [A humanoid plant or mushroom, with bark for skin and leaves, flowers or a cap for hair.]),
      (kind: "active", limitation: (per_turn(1), per_safe_rest(KEY)), effect: [When an adjacent enemy hits you, it is #kw_dazed.]),
    ),
    reminder: (conditions.dazed,),
)

#let plant_folk = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.23-27 (Dryad). Book: Danger Pollen/Spores (Dryad/Shroomling), adjacent enemies are Dazed when an enemy causes you Wounds; the changelog makes any source of Wounds count.

house-rule: Dazes an adjacent enemy that hits you, once per turn, KEY times per Rest, instead
of dazing adjacent enemies when you gain Wounds (balance pass, user ruling 2026-11-27).
*/
