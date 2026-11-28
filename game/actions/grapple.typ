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
        effect: [With a free hand, choose a creature within your Reach, your size or smaller. Make a check adding your #STR and #DEX, against #dc(10) plus the target's #STR and #DEX. On a success, it is #kw_grappled.],
      ),
      (
        kind: "active",
        name: "Escape",
        cost: (actions(1),),
        effect: [Make a check adding your #STR and #DEX, against #dc(10) plus the #STR and #DEX of the creature grappling you. On a success, you are no longer #kw_grappled.],
      ),
    ),
    reminder: (conditions.grappled,),
)

#let grapple = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.10 (Grappling) and the 2026-10-02 changelog (a bigger creature attacks
its rider with disadvantage). What happens during a grapple (speed, advantage, crit) is the
Grappled condition (game/conditions.typ), which covers both creatures: it is in
the reminders here and on the Combat page.

house-rule: Grappling simplified (user ruling 2026-11-28). Grab and Escape are both a check by
the creature that acts, adding its STR and DEX, against DC 10 plus the other creature's STR and
DEX. Only a creature your size or smaller can be grabbed (book: grabbing a bigger creature makes
you ride it; Riding stays for the cards that give it). Grappled only concerns the grabbed
creature: the grappler has no penalty. A creature's STR and DEX are 0
unless its card shows them (Combat rules page, Creatures).
The changelog makes grabbing a DC 10 Might or Finesse check, and the book has the target save.

house-rule: Assess is removed from the game: asking the GM is plain role-play, and its two
combat effects live on Wild Instinct and Quick Read. This card was Maneuvers.
*/
