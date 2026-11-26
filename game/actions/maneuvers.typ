#import "/global.typ": *

#let ability_data = (
    name: "Maneuvers",
    type: (
        "Ability",
        "Combat",
    ),
    blocks: (
      (
        kind: "active",
        name: "Grab",
        cost: (actions(1),),
        effect: [With a free hand, make a #dc(10) Might or Finesse check against a creature within your Reach. On a success, it is #kw_grappled if it is your size or smaller. If it is bigger, you are #kw_riding it, and its attacks against you have #kw_disadvantage.],
      ),
      (
        kind: "active",
        name: "Escape",
        cost: (actions(1),),
        effect: [Make a #dc(10) #STR or #DEX save. On a success, you are no longer #kw_grappled.],
      ),
    ),
    reminder: (conditions.grappled, conditions.riding),
)

#let maneuvers = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.10 (Grappling), 2026-10-02 changelog (grabbing is a DC 10 Might or
Finesse check, a bigger creature attacks its rider with
disadvantage). What happens during a grapple (speed, advantage, crit) is on the Combat rules
page: it applies to creatures too.

interpretation: The changelog only changes the grab. The escape keeps the book's STR or DEX
save, at DC 10 as in guides/creature_rules.txt.

house-rule: Assess is removed from the game: asking the GM is plain role-play, and its two
combat effects live on Wild Instinct and Quick Read.
*/
