#import "/global.typ": *

#let ability_data = (
    name: "Grapple",
    type: (
        "Ability",
        "Combat",
    ),
    blocks: (
      (
        kind: "active",
        name: "Grab",
        cost: (actions(1),),
        effect: [With a free hand, choose a creature within your Reach. Make a #STR or #DEX check against #dc(10) plus its #STR or #DEX, whichever is higher. On a success, it is #kw_grappled if it is your size or smaller. If it is bigger, you are #kw_riding it, and its attacks against you have #kw_disadvantage. While the grapple lasts, you are #kw_grappling.],
      ),
      (
        kind: "active",
        name: "Escape",
        cost: (actions(1),),
        effect: [Make a #STR or #DEX check against #dc(10) plus the #STR or #DEX of the creature grappling you, whichever is higher. On a success, you are no longer #kw_grappled.],
      ),
    ),
    reminder: (keywords.grappling, conditions.grappled, conditions.riding),
)

#let grapple = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.10 (Grappling) and the 2026-10-02 changelog (a bigger creature attacks
its rider with disadvantage). What happens during a grapple (speed, advantage, crit) is the
Grappling keyword (game/keywords.typ), in the reminders here and on the Combat page.

house-rule: Grab and Escape are both a STR or DEX check by the creature that acts, against
DC 10 plus the higher of the other creature's STR and DEX. A creature's STR and DEX are 0
unless its card shows them (Combat rules page, Creatures).
The changelog makes grabbing a DC 10 Might or Finesse check, and the book has the target save.

house-rule: Assess is removed from the game: asking the GM is plain role-play, and its two
combat effects live on Wild Instinct and Quick Read. This card was Maneuvers.
*/
