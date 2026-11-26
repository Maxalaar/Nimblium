#import "/global.typ": *
#import "/templates/rules_page.typ": rules_page, section, rule, values

#rules_page(
  name: "Combat",
  intro: [How a fight runs, turn after turn, and what heroes and creatures can do in it.],
)[

#section("Starting combat")[
  When the GM calls for Initiative, each hero rolls 1d20 and adds their #DEX. The result gives
  the number of actions they have for their first turn.

  #values(columns: (1fr, auto), header: ("Initiative", "Actions"),
    [9 or less], [1],
    [10 to 19], [2],
    [20 or more, or a 20 on the die], [3],
  )

  #rule[Surprise][Against foes caught completely off guard, the GM may give the heroes
  #kw_advantage on Initiative, or start them with 3 actions. Surprised heroes may roll with
  #kw_disadvantage, start with 1 action, or let the monsters act first.]

  #rule[Turn order][The heroes act first, in the order of the table. The monsters usually act
  after them, and a group of monsters acts at the same time.]
]

#section("Turns and rounds")[
  A turn is one hero or one group of monsters acting, about 6 seconds. A round is everyone
  taking a turn. An encounter is every round of one fight.

  Limits per turn and per round reset at the end of your turn. An ability limited per turn
  can be used again on another creature's turn.
]

#section("Actions")[
  You have up to 3 actions. You spend them on your turn, or when a triggered action allows it.
  At the end of your turn, you get back up to 3 actions.

  Every hero can take the actions of the #card_ref("Basic Actions"), #card_ref("Maneuvers")
  and #card_ref("Triggered Actions") cards. Class and spell cards add more.

  #rule[Over several turns][An ability that costs more actions than you have can be paid
  over several turns. You must keep concentrating, and do nothing else that costs an action
  in the meantime.]
]

#section("Attack")[
  Any spell or ability that can harm an enemy is an attack. Roll its dice and deal that much
  damage.

  #rule[#primary_die][The leftmost die is the #primary_die. A 1 on it is a miss, and the
  attack has no effect. Its maximum is a critical hit. Roll it again and add the result, as
  long as you roll the maximum.]

  #rule[Areas][An attack on an area can't miss and can't crit.]

  #rule[Rushed attacks][Each attack after the first on the same turn has 1 more
  #kw_disadvantage. For an ability that calls for a save, the target rolls with 1 more
  #kw_advantage instead.]

  #rule[#defense][A creature takes its #defense less damage from each attack. Critical hits
  ignore #defense.]

  #rule[Vulnerable and Resistant][A creature takes 10 more damage from a type it is
  Vulnerable to, and 10 less damage from a type it is Resistant to.]
]

#section("Movement")[
  Your #speed is 6 unless something says otherwise.

  #keywords.difficult_terrain Climbing counts as #kw_difficult_terrain.

  You may move through an ally's space. You may move through an enemy's space only if its
  size is at least 2 steps bigger or smaller than yours. You can't end your move in an
  occupied space.
]

#section("Reach, range and areas")[
  #rule[Reach X][A melee attack reaches every space within X spaces. Without a number, it is
  Reach 1.]

  #rule[Range X][A ranged attack reaches X spaces. It has #kw_disadvantage while an enemy is
  adjacent to you. You may take 1 #kw_disadvantage to add 2 to its range, up to 3 times.]

  #rule[Cone X][It starts at you and goes X spaces out, and X spaces wide at its far end.]

  #rule[Line X][It goes X spaces in a straight line from you, 1 space wide.]

  A space at least half covered by an area is part of it.
]

#section("Triggered actions")[
  An action that starts with "When..." is used when its trigger happens, even outside your
  turn. You may decide after seeing the roll.
]

#section("Cover and hiding")[
  #keywords.cover

  #keywords.full_cover

  Most creatures won't hunt a hidden hero while other dangers remain.
]

#section("Grappling")[
  The #card_ref("Maneuvers") card explains how to grab and how to escape. While a creature
  grapples another, it moves at half #speed, or at full #speed if it is bigger. Attacks
  against either of them have #kw_advantage. A critical hit against either of them ends the
  grapple. It also ends when forced movement separates them, or when the grappler is
  #kw_incapacitated.

  #rule[#kw_restrained][Chains, ropes or roots work like Grappled, whatever the size. Picking
  the lock or cutting the rope ends it.]
]

#section("Forced movement")[
  #keywords.knockback

  Small, Tiny and #kw_flying creatures are pushed twice as far, Large ones half as far. Huge and
  Gargantuan creatures ignore forced movement. When a pushed creature hits another creature,
  they share the damage.
]

#section("Concentration")[
  You can concentrate on only one thing at a time. When you take a critical hit while
  concentrating, make a #dc(10) #STR save. On a failure, your concentration ends. It also
  ends at 0 #HP. You can't start concentrating while #kw_dying or #kw_incapacitated.
]

#section("Dying and Wounds")[
  When you drop to 0 #HP, you gain 1 Wound and you are #kw_dying until you regain #HP.

  Wounds are lasting injuries. A #safe_rest heals 1 of them. You die when you have 6 Wounds.
]

#section("Creatures")[
  Each creature has 1 action per turn, or the number its card shows as ACT. It moves up to its
  #speed for free, without spending an action. Only heroes make opportunity attacks.

  A legendary creature takes a turn after each hero's turn, with all its actions each time.

  #rule[Minions][#passive_abilities.minion.effect]
]

#section("Conditions")[
  A creature has a condition or doesn't. Conditions don't stack.

  #set text(size: 8.5pt)
  #for c in conditions.values() [#c

  ]
]
]

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.10-11 and p.13-15, glossary p.56, both changelogs (Help rerolls, grabbing, moving through spaces by size, forced movement by size, cones,
Concentration, Dying, Opportunity Attacks against any creature, limits reset at the end of
your turn, multi-target attacks roll normally, Defend after seeing the roll), and
guides/creature_rules.txt for the Creatures section. The actions themselves (Move, Attack,
Hide, Grab, Escape, Defend, Interpose, Opportunity Attack, Help) are on the cards of
game/actions/.

house-rule: Creatures have actions and move for free, monster Defense is a number (house_rules.txt,
creature_rules.txt).

house-rule: There are no Reactions: triggered actions have a "When..." trigger and work on
your own turn too (writing_rules.txt §4).

interpretation: The book's Initiative bands ("a single digit", "2 digits") become 9 or less
and 10 to 19.
*/
