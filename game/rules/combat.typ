#import "/global.typ": *
#import "/templates/rules_page.typ": rules_page, section, rule, values

#rules_page(
  name: "Combat",
  intro: [Turns, actions, attacks, movement and adversaries.],
  reminder: (keywords.advantage, keywords.concentration, keywords.cover,
    keywords.disadvantage, conditions.dying, keywords.full_cover, keywords.hide,
    keywords.primary_die, conditions.prone),
)[

#section("Initiative and turns")[
  When the GM calls for Initiative, each hero rolls 1d20 and adds their #DEX. The result gives
  the number of actions they have for their first turn.

  #values(columns: (1fr, auto), header: ("Initiative", "Actions"),
    [9 or less], [1],
    [10 to 19], [2],
    [20 or more, or a 20 on the die], [3],
  )

  #rule[Turn order][The heroes act first, in the order of the table, then the creatures.]

  #rule[Limits][Limits per turn and per round reset at the end of your turn. An ability limited
  per turn can be used again on another creature's turn.]
]

#section("Actions")[
  At the end of your turn, you lose the actions you have left and get 3 new ones. You spend
  them on your turn, or when a triggered action allows it.

  #rule[Which actions][Every hero can take the actions of the #card_ref("Basic Actions"),
  #card_ref("Grapple") and #card_ref("Triggered Actions") cards, and of their class and spell
  cards.]

  #rule[Triggered actions][An action that starts with "When..." is used when its trigger
  happens, even outside your turn. You may decide after seeing the roll.]

  #rule[Over several turns][An ability that costs more actions than you have can be paid
  over several turns. You must keep your #kw_concentration, and do nothing else that costs an action
  in the meantime.]
]

#section("Movement")[
  Your #speed is 6. Your cards may change it.

  #rule[Other creatures][You may move through an ally's space. You may move through an enemy's space only if its
  size is at least 2 steps bigger or smaller than yours. You can't end your move in an
  occupied space.]
]

#section("Attack")[
  Any spell or ability that can harm an enemy is an attack. Roll its dice and deal that much
  damage. Its #kw_primary_die can miss or crit.

  #rule[Areas][An attack on an area can't miss and can't crit. Roll its damage once and apply
  it to every creature in the area. If it calls for a check, each creature rolls its own.
  A condition that gives #kw_advantage or #kw_disadvantage against one creature, such as
  #kw_prone, doesn't change the roll.]

  #rule[Rushed attacks][Each attack after the first on the same turn has 1 more
  #kw_disadvantage.]

  #rule[#defense][A creature takes its #defense less damage from each attack. A hero's
  #defense only counts when they Defend. Critical hits ignore #defense.]

  #rule[Vulnerable and Resistant][A creature takes 10 more damage from a type it is
  Vulnerable to, and 10 less damage from a type it is Resistant to.]
]

#section("Weapons")[
  Each weapon card shows its damage, its Reach or Range, and its properties.

  #rule[Hands][You have 2 hands. Each item card says how many hands it takes. Changing what you
  hold costs 1 action. Dropping an item costs none.]

  #rule[Dual wielding][With a Light weapon in each hand, your first attack each round has
  #kw_advantage.]

  #rule[Unarmed strike][An attack with your fists or feet deals 1d4+#STR damage, with Reach 1.]

]

#section("Reach, range and areas")[
  Each attack or ability says how far it reaches, or the shape of its area.

  #rule[Reach X][A melee attack reaches every space within X spaces. Without a number, it is
  Reach 1.]

  #rule[Range X][A ranged attack reaches X spaces, or up to twice that with #kw_disadvantage.
  It has #kw_disadvantage while an enemy is adjacent to you.]

  #rule[Cone X][It starts at you and goes X spaces out, and X spaces wide at its far end.]

  #rule[Line X][It goes X spaces in a straight line from you, 1 space wide.]

  #rule[Areas][A space at least half covered by an area is part of it.]
]

#section("Cover and hiding")[
  Obstacles between you and a ranged attacker give you #kw_cover or #kw_full_cover, and let
  you #kw_hide.

  #rule[Hiding][Most creatures won't hunt a hidden hero while other dangers remain.]
]

#section("Dying and Wounds")[
  Wounds are lasting injuries. You die when you have 6 Wounds. A #safe_rest heals all of them.

  #rule[Gaining Wounds][When you drop to 0 #HP, you gain 1 Wound and you are #kw_dying until
  you regain #HP. While #kw_dying, each time you would take damage, you gain 1 Wound instead,
  or 2 on a critical hit. Some cards also make you gain Wounds.]
]

#section("Armor and shields")[
  Your #defense is your #DEX, plus the bonus of your armor and of your shield. Their bonus
  grows with your level, as their cards show.

  #rule[Proficiency][You can wear only the armor, and hold only the shields, your class sheet
  lists.]
]

#section("Adversaries")[
  Adversaries are the creatures the GM plays. Each has 1 action per turn, or the number its card shows as ACT. It moves up to its
  #speed for free, without spending an action. Only heroes make opportunity attacks.

  #rule[Stats and skills][An adversary's #STR, #DEX, #INT, #WIL and skills are 0, unless its card
  shows them.]

  #rule[Minions][#passive_abilities.minion.effect]

  #rule[Building an encounter][Add up the heroes' levels, then the adversaries' levels. When the
  two totals are equal, the fight is balanced. Fewer adversary levels make it easier, more make
  it harder.]
]

]

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.10-11 and p.13-15, glossary p.56, both changelogs (grabbing, moving through spaces by size, forced movement by size, cones,
Concentration, Dying, Opportunity Attacks against any creature, limits reset at the end of
your turn, multi-target attacks roll normally, Defend after seeing the roll), and
guides/creature_rules.txt for the Adversaries section. The actions themselves (Move, Attack,
Hide, Grab, Escape, Defend, Interpose, Opportunity Attack) are on the cards of
game/actions/.

Building an encounter: Game Master's Guide p.26 (Combat Encounter Guidelines), kept to its core
rule, the creatures' levels added up against the heroes' (user ruling 2026-11-28: one short
paragraph on the Combat page; the difficulty bands, minions per hero and encounters per session
are left out).

house-rule: No legendary creatures (user ruling 2026-11-28). A boss is a creature like the
others: it has a name, often more actions (ACT) and a higher level, and it acts on the
creatures' turn (book: a legendary monster takes a turn after each hero's turn).

interpretation: No Grappling and no Knockback sections (user ruling 2026-11-28): the Grapple card,
the Grappled and Restrained conditions and the Knockback keyword are on the cards that use
them. No Concentration section either: Concentration is a keyword, reminded on every spell and
ability that uses it (user ruling 2026-11-28).

house-rule: No maximum of 3 actions (user ruling 2026-11-28). Effects that give actions can take
you above 3; at the end of your turn, whatever you have left is lost and you get exactly 3
(book: you have up to 3 actions, and get back up to 3 at the end of your turn).

house-rule: Dual wielding is only Advantage on your first attack each round, with a Light
weapon in each hand (user ruling 2026-11-28; book: one attack per round has Advantage, roll
both weapons' damage and keep either, and 2 or 3 STR lift the Light requirement).

interpretation: The Primary Die is a keyword (Glossary), reminded on the Basic Actions card: the
Attack action says how it plays without sending to this page. A hero's Defense only counts when
they Defend, a creature's always does, and crits ignore both (changelog; user ruling 2026-11-28
to say it on the page and on the Defend action).

interpretation: Conditions and keyword definitions are on the Glossary page (user ruling
2026-11-28): no Conditions list here, and no Difficult Terrain, Cover or Full Cover definition.

interpretation: Layout (user ruling 2026-11-28): each section opens with an untitled paragraph,
then every other paragraph starts with its name in bold and a period; keyword and condition
definitions keep their colon. Surprise is left out (the GM decides), and Turns and rounds is
reduced to its Limits rule (the definitions of turn, round and encounter go without saying).

house-rule: Creatures have actions and move for free, monster Defense is a number (house_rules.txt,
creature_rules.txt).

house-rule: There are no Reactions: triggered actions have a "When..." trigger and work on
your own turn too (writing_rules.txt §4).

house-rule: A Safe Rest heals all your Wounds (user ruling 2026-11-28: one big fight, then a
rest; book: 1 Wound per Safe Rest). The section lists every way to gain a Wound.

interpretation: The section on the GM's creatures is called Adversaries (user ruling
2026-11-28): heroes are creatures too, and "creature" keeps its general meaning in the other
rules. The card type stays "creature".

interpretation: The keywords and conditions the page uses are reminded once, at the end of the
page (user ruling 2026-11-28), not under each section.

house-rule: Long range (user ruling 2026-11-28): a ranged attack reaches up to twice its Range
with 1 Disadvantage (book: 1 Disadvantage for each 2 more spaces, up to 3 times).

house-rule: No improvised weapon rule (user ruling 2026-11-28): the GM decides what a chair or a
rock does.

changelog: Unarmed strikes deal 1d4+STR.

house-rule: Class sheets list every armor the class is proficient with (Cloth, Leather, Mail,
Plate, shields), and you can't wear the others (book: without proficiency, Defend costs 1 more
action, Core Rules p.33). Defense is DEX + armor + shield, and armor and shields grow
with your level (game/items/armor/).

house-rule: No weapon proficiency: any hero can use any weapon, and class sheets list no
weapons (book: a weapon without proficiency can't crit). Unarmed strikes can crit like any attack
(user ruling 2026-11-28; book: only when proficient, and proficient heroes count their fists as
dual wielded). Climbing has no rule: the GM decides (book: it counts as Difficult Terrain). Changing what you hold costs 1 action (Hands). Armor proficiency stays.

interpretation: The book's Initiative bands ("a single digit", "2 digits") become 9 or less
and 10 to 19.
*/
