#import "/global.typ": *
#import "/templates/rules_page.typ": rules_page, section, rule, example, values, verso

#rules_page(
  name: "Adventure",
  intro: [What heroes do outside a fight, and how they recover from it.],
)[

#section("Stats")[
  Each hero has 4 stats. Their class makes 2 of them Key Stats, and the other 2 are Secondary
  Stats. A stat can't go above +5.

  #rule[#KEY][When a rule says #KEY, use one of your Key Stats.]

  #rule("Stat dice")[A stat written before a die is the number of dice you roll. With 2 #WIL,
  #WIL d8 means 2d8.]

  #values(columns: (9mm, 1fr),
    [*#STR*], [Physical power and endurance. Damage of #STR weapons, Wounds, #HP recovery,
    carrying, grappling.],
    [*#DEX*], [Agility and precision. Damage of #DEX weapons, Initiative, #defense, grappling.],
    [*#INT*], [Knowledge and reasoning. Languages, spellcasting, wands, spell scrolls.],
    [*#WIL*], [Personality, courage and wisdom. Spellcasting, dealings with nature and people.],
  )
]

#section("Skills")[
  Each skill uses one stat. Its bonus is that stat plus the skill points you put in it, and it
  can't go above +10.

  #values(columns: (21mm, 9mm, 1fr),
    [Arcana], [#INT], [Magic, spells, magical items. Aberrations, Elementals, Oozes.],
    [Examination], [#INT], [Clues, injuries, traps, mechanisms. Constructs.],
    [Finesse], [#DEX], [Locks, traps, vehicles, sleight of hand, careful climbing.],
    [Influence], [#WIL], [Persuading, deceiving, negotiating, performing.],
    [Insight], [#WIL], [Motives, lies, emotions, hunches. It can also show your hero thought
    ahead, such as buying rope in town.],
    [Lore], [#INT], [History, kingdoms, religions. Celestials, Dragons, Fey, Fiends, Giants,
    Humanoids, Undead.],
    [Might], [#STR], [Lifting, breaking, climbing, swimming, jumping.],
    [Naturecraft], [#WIL], [Survival, navigation, tracking, animals. Beasts, Monstrosities,
    Plants.],
    [Perception], [#WIL], [Hidden objects, secret passages, being followed or watched.],
    [Stealth], [#DEX], [Hiding, sneaking, slipping past guards.],
  )
]

#section("Checks")[
  When the outcome of something is uncertain, the GM or the effect asks for a check, with a
  stat or a skill, such as a #DEX check or a Stealth check. Roll 1d20 and add that stat or
  skill. If the total equals or beats the DC, you succeed. A 1 on the die always fails, and a
  20 always succeeds.

  #values(columns: (auto, auto, 1fr), header: ("Task", "DC", "Example"),
    [Easy], [8], [Spot an Ogre crouched behind a small bush.],
    [Medium], [12], [Find a hidden door behind a bookcase.],
    [Challenging], [15], [Calm a wounded Owlbear caught in a trap.],
    [Very difficult], [18], [Read the true intentions of a trained spy.],
    [Extreme], [20+], [Disarm an ancient legendary trap.],
  )

  The DC of an effect a hero creates is #dc(10, stat: KEY), unless the effect says otherwise.

  #rule[Half on a success][When an effect deals damage "or half on a success", a creature that
  succeeds on the check takes half the damage and no other effect.]
]

#section("Advantage & disadvantage")[
  In a favorable situation, the GM may give you #kw_advantage. In a grim one, or for a long
  shot, you may have #kw_disadvantage.

  #keywords.advantage

  #keywords.disadvantage

  Each #kw_advantage cancels one #kw_disadvantage before you roll. When removed dice tie, remove them
  from left to right.
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

#section("Rounding")[
  When a rule divides a number, round the result up.
]

#section("Falling")[
  A creature that falls takes 1d6 bludgeoning damage for every 2 spaces it falls.
]

#verso

#section("Hit points")[
  Your #HP measure how much damage you can endure. Damage reduces them, but never below 0.
  At 0 #HP, you are #kw_dying, as the Combat page explains.

  Damage is any loss of #HP. Damage stopped by Defend or by temporary #HP doesn't count as
  damage.

  #rule[Temporary #HP][Temporary #HP are lost before your #HP. They don't add up. When you
  would gain more, you choose which amount to keep. They expire after a #safe_rest.]
]

#section("Hit Dice")[
  Hit Dice let you recover #HP while you adventure. You have #LVL Hit Dice at most, and their
  size depends on your class. You spend them during a Field Rest, and you recover them all
  during a #safe_rest.
]

#section("Field Rest")[
  Heroes take Field Rests while they adventure, to recover #HP.

  #rule("Catch Breath")[Rest for at least 10 minutes. Spend any number of Hit Dice, one at a
  time. Roll each one and add your #STR, then regain that many #HP. A negative #STR is
  subtracted.]

  #rule("Make Camp")[Rest for at least 8 hours, with food and sleep. Each Hit Die you spend
  gives its maximum value instead of a roll, plus your #STR as usual.]
]

#section("Safe Rest")[
  A #safe_rest happens in a safe place the GM chooses, such as a night at an inn, a secret
  oasis or a sacred shrine. Camping in the wilderness or in a dungeon is not enough.

  After a #safe_rest, you recover all your #HP, all your Hit Dice, your mana, your class
  resources and the charges of your items, and you heal 1 Wound. Abilities limited per #safe_rest can be used again.

  You level up during a #safe_rest, as the Level Up page explains. Your class choices only
  change when you level up.
]

#section("Items")[
  You can carry 10 + #STR slots of items, held, worn or in a pack. Each item card shows how
  many slots it takes (SLOT). Small related items share 1 slot, such as camping supplies.
  Ammunition isn't counted: with a quiver, you have arrows.

  #rule[Level][You can use an item only if your level is at least the level shown on its card.]

  #rule[Charges][An item may have charges (CHRG). Each use spends 1 charge, and they all
  come back after a #safe_rest, unless its card says otherwise.]

  #rule[Magic items][You can carry 2 magic items, 3 from level 5, 4 from level 10, and 5
  from level 15. #card_ref("Wand", "Wands") don't count.]
]
]

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.7-9 and p.17, glossary p.56, and both changelogs. Lodging and Downtime
are left out on purpose. Speed, range, forced movement, Cover, Hide, grappling, Concentration, Dying,
Wounds and conditions are on the Combat page.

changelog: The max skill bonus is +10 (was +12). "You can choose to fail any save" is removed.
Half on a success (the changelog's "half on save") and the definition of damage come from the
2026-10-02 changelog.

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

house-rule: Divisions round up (Nimble doesn't say; user ruling 2026-11-26).

interpretation: Optional rules (gritty dying, abstracted distances, a week of rest per Wound)
are left out.
*/
