#import "/global.typ": *
#import "/templates/rules_page.typ": rules_page, section, rule, values

#rules_page(
  name: "Level Up",
  intro: [How to make a hero, and how a hero grows from level 1 to level 20.],
)[

#section("Making a hero")[
  #rule[1\. Class][Choose your class. Take its class sheet and the cards of its level 1
  features.]

  #rule[2\. Ancestry and background][Choose 1 ancestry and 1 background. Your ancestry gives
  your size and a trait. Your background gives another trait.]

  #rule[3\. Stats][Choose one of these arrays and spread its values over your 4 stats. Put the
  highest values in your Key Stats.]

  #values(columns: (1fr, auto), header: ("Array", "Values"),
    [Standard], [+2, +2, +0, −1],
    [Balanced], [+2, +1, +1, +0],
    [Min-Max], [+3, +1, −1, −1],
  )

  #rule[4\. Skills][Each skill starts at the value of its stat. Add your level 1 skill point to
  any skill. A skill can't go above +10.]

  #rule[5\. The rest of your sheet][Fill in these values.]

  #values(columns: (27mm, 1fr),
    [Vitality], [Your class sheet's value plus your #STR, at least 1. Many heals count in Vitality.],
    [Max #HP], [10, plus #LVL times your Vitality.],
    [#defense], [Your #DEX, plus your armor's and your shield's bonus.],
    [Initiative], [Your #DEX.],
    [Speed], [6.],
    [Size], [Your ancestry's size.],
    [Max Wounds], [6.],
    [Inventory], [#STR + 10 slots.],
  )

  #rule[6\. Languages][You speak Common, and 1 more language for each point of #INT.]

  #values(columns: (25mm, 1fr), header: ("Language", "Spoken by"),
    [Common], [Most intelligent creatures.],
    [Dwarvish], [Dwarves, gnomes and giants.],
    [Elvish], [Elves, fey and sylvan creatures.],
    [Goblin], [Goblins and orcs.],
    [Infernal], [Fiends and cultists.],
    [Thieves' Cant], [Scoundrels and rogues.],
    [Celestial], [Celestials and priests.],
    [Draconic], [Dragons, dragonborn and kobolds.],
    [Primordial], [Elementals and ancient beings.],
    [Deep Speak], [Underworld dwellers.],
  )
]

#section("Leveling up")[
  When the GM says your hero has earned a level, you gain it during your next #safe_rest. Your
  class sheet says what you gain: its "All" row, and the row of your new level.
]
]

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.19-21 (Making a Hero, The Character Sheet, Leveling Up) and the
2026-10-02 changelog (max skill bonus +10, leveling up happens during a Safe Rest, fixed HP
increase, the sheet tracks Speed, Size and Defense instead of height and weight).

house-rule: Class choices never change: leveling up only adds new ones (guides/house_rules.txt).

house-rule: Vitality replaces the Hit Die: the class's value plus STR, at least 1 (base 4 or 5
for most classes, 4 to 7 for the classes with STR as a Key Stat, 1 less than their old Hit Die
to narrow the gap with casters). Max HP is 10 + LVL × Vitality, with no
roll and no starting HP per class (the book: the class's starting HP, then roll the Hit Die
with advantage or take the fixed value at each level). Within 4 HP of the book above level 1.

house-rule: 1 skill point at every level, level 1 included, and points never move (book: 4
points at creation, 1 per level, and you may move 1 point). The Stats rule (update what uses a
stat) is left out: it goes without saying.

interpretation: Starting equipment and gold are left out (user ruling 2026-11-26).

interpretation: Ancestries and backgrounds are not listed here: their traits are played like
abilities, so they will become cards. Adventuring motivation is role-play, left to the
players. Multiclassing and the other optional rules are left out.
*/
