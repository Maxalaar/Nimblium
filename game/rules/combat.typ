#import "/global.typ": *
#import "/templates/rules_page.typ": rules_page, section, rule, values

#rules_page(
  name: "Combat",
  intro: [Turns, attacks, movement and conditions.],
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

  Every hero can take the actions of the #card_ref("Basic Actions"), #card_ref("Grapple") and
  #card_ref("Triggered Actions") cards. Class and spell cards add more.

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

  #rule[Areas][An attack on an area can't miss and can't crit. Roll its damage once and apply
  it to every creature in the area. If it calls for a check, each creature rolls its own.
  A condition that gives #kw_advantage or #kw_disadvantage against one creature, such as
  #kw_prone, doesn't change the roll.]

  #rule[Rushed attacks][Each attack after the first on the same turn has 1 more
  #kw_disadvantage.]

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
  The #card_ref("Grapple") card explains how to grab and how to escape. The #kw_grappled
  condition covers both creatures while the grapple lasts.

  #rule[#kw_restrained][Chains, ropes or roots work like Grappled, whatever the size. Picking
  the lock or cutting the rope ends it.]
]

#section("Knockback")[
  #keywords.knockback
]

#section("Concentration")[
  You can concentrate on only 1 spell or ability at a time. When you take a critical hit
  while concentrating, make a #dc(10) #STR check. On a failure, your concentration ends. You
  can't concentrate while #kw_dying or #kw_incapacitated.
]

#section("Dying and Wounds")[
  When you drop to 0 #HP, you gain 1 Wound and you are #kw_dying until you regain #HP.

  Wounds are lasting injuries. A #safe_rest heals 1 of them. You die when you have 6 Wounds.
]

#section("Hands")[
  You have 2 hands. Each item card says how many hands it takes. Changing what you hold costs
  1 action. Dropping an item costs none.
]

#section("Weapons")[
  Each weapon card shows its damage, its Reach or Range, and its properties.

  #rule[Dual wielding][With a Light weapon in each hand, one attack with them per round has
  #kw_advantage. Roll the damage of both weapons and keep either result. With 2 #STR, one of
  them doesn't need to be Light. With 3 #STR, neither does.]

  #rule[Unarmed strike][An attack with your fists or feet deals 1d4+#STR damage, with Reach 1.
  It can't crit.]

  #rule[Improvised weapons][A chair, a frying pan or a rock deals 1d4+#STR damage, or 1d6+#STR
  if it needs 2 hands. It breaks after 3 hits.]
]

#section("Armor and shields")[
  Your #defense is your #DEX, plus the bonus of your armor and of your shield. Their bonus
  grows with your level, as their cards show.

  #rule[Proficiency][You can wear only the armor, and hold only the shields, your class sheet
  lists.]
]

#section("Creatures")[
  Each creature has 1 action per turn, or the number its card shows as ACT. It moves up to its
  #speed for free, without spending an action. Only heroes make opportunity attacks.

  A legendary creature takes a turn after each hero's turn, with all its actions each time.

  A creature's #STR, #DEX, #INT and #WIL are 0, unless its card shows them. Each of its
  skills equals its stat.

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

Source: Core Rules p.10-11 and p.13-15, glossary p.56, both changelogs (grabbing, moving through spaces by size, forced movement by size, cones,
Concentration, Dying, Opportunity Attacks against any creature, limits reset at the end of
your turn, multi-target attacks roll normally, Defend after seeing the roll), and
guides/creature_rules.txt for the Creatures section. The actions themselves (Move, Attack,
Hide, Grab, Escape, Defend, Interpose, Opportunity Attack) are on the cards of
game/actions/.

house-rule: Creatures have actions and move for free, monster Defense is a number (house_rules.txt,
creature_rules.txt).

house-rule: There are no Reactions: triggered actions have a "When..." trigger and work on
your own turn too (writing_rules.txt §4).

house-rule: An improvised weapon deals 1d4+STR with 1 hand and 1d6+STR with 2, and breaks
after 3 hits (book: 1d4 or 1d6 as the GM sees fit, bigger dice if the GM allows; changelog:
it breaks "after a few hits"). Customizing weapons is left to the GM.

changelog: Unarmed strikes deal 1d4+STR.

house-rule: Class sheets list every armor the class is proficient with (Cloth, Leather, Mail,
Plate, shields), and you can't wear the others (book: without proficiency, Defend costs 1 more
action, Core Rules p.33). Defense is DEX + armor + shield, and armor and shields grow
with your level (game/items/armor/).

house-rule: No weapon proficiency: any hero can use any weapon, and class sheets list no
weapons (book: a weapon without proficiency can't crit). Unarmed strikes can't crit unless an
ability says so (book: unless proficient, and proficient heroes count their fists as dual
wielded). Changing what you hold costs 1 action (Hands). Armor proficiency stays.

interpretation: The book's Initiative bands ("a single digit", "2 digits") become 9 or less
and 10 to 19.
*/
