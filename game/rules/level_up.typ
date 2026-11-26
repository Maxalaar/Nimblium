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

  #rule[4\. Skills][Each skill starts at the value of its stat. Then add 4 skill points to any
  skills you like. A skill can't go above +10.]

  #rule[5\. The rest of your sheet][Fill in these values.]

  #values(columns: (27mm, 1fr),
    [Max #HP], [10, plus #LVL times your Hit Die's value.],
    [Hit Dice], [#LVL dice, of the size your class sheet gives.],
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
  When the GM says your hero has earned a level, you gain it during your next #safe_rest.

  #rule[#HP][Your max #HP increases by your Hit Die's value.]

  #values(columns: (1fr,) * 5, header: ("d4", "d6", "d8", "d10", "d12"),
    [+3], [+4], [+5], [+7], [+8],
  )

  #rule[Hit Dice][Your maximum number of Hit Dice increases by 1.]

  #rule[Skills][Gain 1 skill point. You may also move 1 point from one skill to another, as
  long as no skill becomes negative.]

  #rule[Class][Gain what your class sheet gives at your new level, and take the matching
  cards.]

  #rule[Stats][When a stat increases, update everything that uses it, such as your skills,
  #defense, Initiative, mana and languages.]
]
]

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.19-21 (Making a Hero, The Character Sheet, Leveling Up) and the
2026-10-02 changelog (max skill bonus +10, leveling up happens during a Safe Rest, fixed HP
increase, the sheet tracks Speed, Size and Defense instead of height and weight).

house-rule: Class choices never change: leveling up only adds new ones (guides/house_rules.txt).

house-rule: Max HP is 10 + LVL × the Hit Die's value (d4 3, d6 4, d8 5, d10 7, d12 8), with no
roll and no starting HP per class (the book: the class's starting HP, then roll the Hit Die
with advantage or take the fixed value at each level). Within 4 HP of the book above level 1.

interpretation: Starting equipment and gold are left out (user ruling 2026-11-26). Inventory
slot sizes will come with the equipment cards.

interpretation: Ancestries and backgrounds are not listed here: their traits are played like
abilities, so they will become cards. Adventuring motivation is role-play, left to the
players. Multiclassing and the other optional rules are left out.
*/
