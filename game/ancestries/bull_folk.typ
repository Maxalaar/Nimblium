#import "/global.typ": *

#let ability_data = (
    name: "Bull-folk",
    type: ("Ancestry",),
    blocks: (
      (kind: "passive", name: "Size", effect: [You are Medium.]),
      (kind: "narrative", name: "Appearance", effect: [A humanoid beast with a powerful build, most often a horned bull, sometimes a boar or a bear.]),
      (kind: "active", limitation: per_encounter(1), effect: [When you hit a creature with a melee attack after moving at least 4 spaces this turn, it takes #LVL+#KEY more damage and you give it #kw_knockback 2.]),
    ),
    reminder: (keywords.knockback,),
)

#let bull_folk = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.23-27 (Minotaur). Book: Charge (Minotaur/Beastfolk), when you move at least 4 spaces push a creature in your path; the changelog makes it a flat 1 space with no 1/turn limit.

house-rule: A charge: after moving at least 4 spaces, a melee hit deals LVL+KEY more damage and
gives Knockback 2, 1/encounter, instead of Knockback 1 to a creature in your path (balance pass, user ruling 2026-11-27).
*/
