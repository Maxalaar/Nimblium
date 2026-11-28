#import "/global.typ": *
#import "/templates/rules_page.typ": rules_page, section, rule, example, values

#rules_page(
  name: "Adventure",
  intro: [Making a hero, checks, rest and growth.],
)[

#section("Rounding")[
  When a rule divides a number, round the result up.
]

#section("Stats")[
  Each hero has 4 stats. Their class makes 2 of them Key Stats.

  #values(columns: (9mm, 1fr),
    [*#STR*], [Strength and toughness. A strong hero hits hard, carries a heavy load and
    endures many wounds.],
    [*#DEX*], [Agility and reflexes. An agile hero dodges blows, acts early in a fight and
    strikes with precision.],
    [*#INT*], [Knowledge and reasoning. A clever hero understands magic, history and
    mechanisms, and solves problems.],
    [*#WIL*], [Willpower, intuition and presence. A strong-willed hero reads people, sways
    them and senses what others miss.],
  )

  #rule[#KEY][When a rule says #KEY, use one of your Key Stats.]

  #rule("Stat dice")[A stat written before a die is the number of dice you roll. With 2 #WIL,
  #WIL d8 means 2d8.]

]

#section("Skills")[
  Each skill uses one stat. A check with a skill adds the stat and the skill.

  #values(columns: (21mm, 9mm, 1fr),
    [Arcana], [#INT], [Knowing magic: spells, magical items and magical creatures.],
    [Examination], [#INT], [Studying something closely: clues, wounds, traps, mechanisms.],
    [Finesse], [#DEX], [Delicate work with your hands: locks, traps, sleight of hand,
    steering a vehicle.],
    [Influence], [#WIL], [Getting what you want from people: persuading, deceiving,
    performing.],
    [Insight], [#WIL], [Reading people and situations, guessing motives and lies, having
    thought ahead.],
    [Lore], [#INT], [Knowing the world: history, kingdoms, religions and the creatures of
    legend.],
    [Might], [#STR], [Raw physical effort: lifting, breaking, climbing, swimming.],
    [Naturecraft], [#WIL], [Living in the wild: surviving, finding your way, tracking,
    handling animals.],
    [Perception], [#WIL], [Noticing things: what is hidden, who follows you, what is
    wrong.],
    [Stealth], [#DEX], [Not being noticed: hiding, sneaking, slipping past guards.],
  )
]

#section("Checks")[
  When the outcome of something is uncertain, the GM or the effect asks for a check, with a
  stat or a skill, such as a #DEX check or a Stealth check. Roll 1d20 and add that stat, or the
  skill and its stat. If the total is higher than the DC, you succeed. A 1 on the die always fails, and a
  20 always succeeds. When you fail, the GM chooses whether you fail or succeed at a cost.

  #values(columns: (1fr, auto), header: ("Task", "DC"),
    [Easy], [8],
    [Medium], [12],
    [Challenging], [15],
    [Very difficult], [18],
    [Extreme], [20+],
  )
]

#section("Advantage & disadvantage")[
  In a favorable situation, the GM may give you #kw_advantage. In a grim one, or for a long
  shot, you may have #kw_disadvantage.

  #rule[Both][Each #kw_advantage cancels one #kw_disadvantage before you roll.]
]

#section("Size")[
  #values(columns: (auto, 1fr, auto), header: ("Size", "About as big as", "Space"),
    [Tiny], [Fits in a pocket], [Several in 1],
    [Small], [Fits in a backpack], [2 in 1],
    [Medium], [A human], [1],
    [Large], [A bear], [#times(2, 2)],
    [Huge], [A small house], [#times(3, 3)],
    [Gargantuan], [A castle keep], [#times(4, 4) or more],
  )
]

#section("Hit points")[
  Your #HP measure how much damage you can endure. Damage reduces them, but never below 0.
  At 0 #HP, you are #kw_dying, as the Combat page explains.

  #rule[Damage][Damage is any loss of #HP. Damage stopped by Defend or by temporary #HP
  doesn't count as damage.]

  #rule[Temporary #HP][Temporary #HP are lost before your #HP. They don't add up. When you
  would gain more, you choose which amount to keep. They are lost when combat ends.]
]

#section("Rest")[
  A #safe_rest is a night of sleep, about 8 hours, somewhere calm enough to sleep. The GM says
  when the heroes can rest.

  #rule[Recovery][After a #safe_rest, you recover all your #HP, your mana, your class
  resources and the charges of your items, and you heal 1 Wound. Abilities limited per
  #safe_rest can be used again.]
]

#section("Items")[
  You can carry 10 + #STR slots of items, held, worn or in a pack. Each item card shows how
  many slots it takes (SLOT). Small related items share 1 slot, such as camping supplies.
  Ammunition isn't counted. With a quiver, you have arrows.

  #rule[Level][You can use an item only if your level is at least the level shown on its card.]

  #rule[Charges][An item may have charges (CHRG). Each use spends 1 charge, and they all
  come back after a #safe_rest, unless its card says otherwise.]
]

#section("Making a hero")[
  #rule[1\. Class][Choose your class. Take its class sheet and the cards of its level 1
  features.]

  #rule[2\. Ancestry and background][Choose 1 ancestry and 1 background. Your ancestry gives
  your size and a trait. Your background gives another trait.]

  #rule[3\. Stats and skills][Your stats and skills start at 0. Spend your 5 stat points and 10
  skill points, as Leveling up explains.]

  #rule[4\. The rest of your sheet][Fill in these values.]

  #values(columns: (27mm, 1fr),
    [Vitality], [Your class sheet's value plus your #STR. Many heals count in Vitality.],
    [Max #HP], [10, plus #LVL times your Vitality.],
    [#defense], [Your #DEX, plus your armor's and your shield's bonus.],
    [Initiative], [Your #DEX.],
    [Speed], [6.],
    [Size], [Your ancestry's size.],
    [Max Wounds], [6.],
    [Inventory], [#STR + 10 slots.],
  )
]

#section("Leveling up")[
  When the GM says your hero has earned a level, you gain it during your next #safe_rest. Your
  class sheet says what you gain, in the row of your new level.

  #rule[Stat and skill points][Raising a stat or a skill by 1 costs as many points as its new
  value. Unspent points are kept.]
]
]

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.7-9 and p.17, glossary p.56, and both changelogs. Lodging and Downtime
are left out on purpose. Speed, range, forced movement, Cover, Hide, grappling, Concentration, Dying,
Wounds and conditions are on the Combat page.

changelog: "You can choose to fail any save" is removed.
The definition of damage comes from the 2026-10-02 changelog. The changelog's "half on save" rule is
left out: each card says what a success does (user ruling 2026-11-27).

house-rule: There are no saves, and no separate skill and stat checks: there is one check,
1d20 + the stat or skill named, against the same DCs. An effect that the book resolves with a
save calls for a check by the affected creature, and classes have no advantaged or
disadvantaged saves.

interpretation: Inventory slots come from Core Rules p.29. The book's option to skip the
bookkeeping is left to the GM. The slots are written on each item card, with no table: armor
always takes 2 (house rule; book: 1 worn, 2 carried), and there is no money.

house-rule: Items with charges (potions, wands) have charges that all come back after a Safe Rest,
so players use them freely; slots limit how many they carry. Items may show a LVL: you can't
use them below that level (a wand's LVL is twice its spell's tier, 1 for a cantrip). Thrown
weapons come back when combat ends.

house-rule: No Hit Dice and no Field Rest: the Rest (the book's Safe Rest, no longer tied to a
safe place) is the only rest (book: Hit Dice spent
during Field Rests, Catch Breath and Make Camp). Healing during an adventure comes from
potions and abilities, counted in Vitality (Making a hero section).

house-rule: Divisions round up (Nimble doesn't say; user ruling 2026-11-26).

interpretation: Optional rules (gritty dying, abstracted distances, a week of rest per Wound)
are left out.

house-rule: A check succeeds when its total is higher than the DC, not equal to it (user ruling
2026-11-28): against DC 10 with no bonus, you need 11 or more, a 50% chance.

house-rule: Stat and skill points are explained in Leveling up, and Making a hero sends there
(user ruling 2026-11-28).

interpretation: The stat and skill tables describe what each one represents, in plain words,
rather than listing what uses it; the DC table has no examples (user ruling 2026-11-28). The
creature types each Knowledge skill covers (Arcana: Aberrations, Elementals, Oozes...) are
left out.

house-rule: No default DC: each card states the DC of its checks (user ruling 2026-11-27).
house-rule: A failed check is a failure or a success at a cost, as the GM chooses (user ruling
2026-11-27).
house-rule: No falling rule: the GM decides what a fall does, since a fixed damage per space
hurts big creatures far less than small ones (user ruling 2026-11-27).

Merged from the Level Up page (user ruling 2026-11-27):

Source: Core Rules p.19-21 (Making a Hero, The Character Sheet, Leveling Up) and the
2026-10-02 changelog (max skill bonus +10, leveling up happens during a Safe Rest, fixed HP
increase, the sheet tracks Speed, Size and Defense instead of height and weight).

house-rule: Class choices never change: leveling up only adds new ones (guides/house_rules.txt).

house-rule: Vitality replaces the Hit Die: the class's value plus STR (base 4 or 5
for most classes, 4 to 7 for the classes with STR as a Key Stat, 1 less than their old Hit Die
to narrow the gap with casters). Max HP is 10 + LVL × Vitality, with no
roll and no starting HP per class (the book: the class's starting HP, then roll the Hit Die
with advantage or take the fixed value at each level). Within 4 HP of the book above level 1.

house-rule: Stat and skill points (user ruling 2026-11-28). Stats and skills start at 0 and
have no maximum (book: stats from an array, at most +5; skills start at their stat, at most +10,
changelog; was +12). Raising one by 1 costs its new value in points, so a high value grows
slowly. A hero has 5 stat points and 10 skill points at level 1 (5 buys +2, +1, +1, +0, the book's
Balanced array; no +3 or +2/+2 at the start), then gains 1 stat point and 2 skill points at
every level. A box above the class sheets' level table gives the HP, stat points, skill points and magic
items of level 1 and of the next levels, so leveling up needs only the class sheet. The number
of magic items you carry is only there, not on this page (user ruling 2026-11-28). A check
with a skill adds the stat and the skill. This replaces the arrays, the class stat increases
(+1 Key Stat at levels 4, 8, 12, 16, +1 Secondary Stat at 5, 9, 13, 17, +1 to any 2 at 20) and
the Secondary Stats. Points never move, and unspent points are kept (book: 4 skill points at
creation, 1 per level, and you may move 1 point). The Stats rule (update what uses a
stat) is left out: it goes without saying.

interpretation: Starting equipment and gold are left out (user ruling 2026-11-26).

interpretation: Ancestries and backgrounds are not listed here: their traits are played like
abilities, so they are cards (`game/ancestries/`, `game/backgrounds/`). Adventuring motivation is role-play, left to the
players. Multiclassing and the other optional rules are left out.
*/
