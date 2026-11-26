#import "/global.typ": *

#let ability_data = (
    name: "Maneuvers",
    type: ("Ability", "Zephyr"),
    blocks: (
      (kind: "active", name: "Slipstream", cost: (actions(1), burst_cost(1)), limitation: per_round(1), effect: [When an attack hits you, Defend against it. Your #defense also applies to every other attack against you this round. Instead, you may first move 1 space.]),
      (kind: "active", name: "Galeforce Strike", cost: (actions(1), burst_cost(1)), damage: [1d20+#STR], effect: [An unarmed strike. It ignores the #kw_disadvantage of rushed attacks and Opportunity Attacks.]),
      (kind: "active", name: "Windstep", cost: (actions(1), burst_cost(1)), effect: [Move up to your #speed. Until your turn ends, you ignore #kw_difficult_terrain and can move through any creature's space.]),
    ),
    levels: [
      *Level 6:* If you have no actions left and haven't attacked this turn, Galeforce Strike costs no action.
    ],
    reminder: (keywords.difficult_terrain,),
)

#let maneuvers = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.67 (Burst of Speed maneuvers) and the 2026-10-02 changelog (no 1/turn limit,
3 maneuvers: Slipstream absorbs Whirling Defense, Galeforce Strike replaces Swiftstrike,
Windstep ignores all movement restrictions; Swift Fists at level 6).

interpretation: The maneuvers cost their usual action plus 1 Burst (book: for free, 1/turn).
The changelog removes the 1/turn limit and gives Swift Fists, which makes Galeforce Strike
cost 0 actions in one case: so it normally costs 1.

interpretation: "All movement restrictions" means Difficult Terrain and occupied spaces.
*/
