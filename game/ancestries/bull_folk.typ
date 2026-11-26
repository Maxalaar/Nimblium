#import "/global.typ": *

#let ability_data = (
    name: "Bull-folk",
    type: ("Ancestry",),
    blocks: (
      (kind: "passive", name: "Size", effect: [You are Medium.]),
      (kind: "narrative", name: "Appearance", effect: [A humanoid beast with a powerful build, most often a horned bull, sometimes a boar or a bear.]),
      (kind: "passive", effect: [When you move at least 4 spaces in a turn, you may give #kw_knockback #KEY to a creature in your path.]),
    ),
    reminder: (keywords.knockback,),
)

#let bull_folk = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.23-27 (Minotaur). Book: Charge (Minotaur/Beastfolk), when you move at least 4 spaces push a creature in your path; the changelog makes it a flat 1 space with no 1/turn limit.

house-rule: Knockback KEY instead of 1 (balance pass, user ruling 2026-11-27).
*/
