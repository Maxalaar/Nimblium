#import "/global.typ": *
#import "/templates/rules_page.typ": rules_page, section, part, subsection, values, verso
#import "/templates/style.typ": reminder_color
#import "/templates/badges.typ": dark_badge, tag_badge
#import "/templates/creat_ability.typ": mode_badge
#import "/game/class/stormshifter/stormshifter_keywords.typ": stormshifter_keywords

// Labels of the cards' stat rows (templates/creat_*.typ), not the game terms.
#let def_label = "DEF"
#let spd_label = "SPD"
// The KEY/Rest limit capsule.
#let key_rest = per_safe_rest(KEY)

// A list of abbreviations and what they mean.
#let abbr(..rows) = values(columns: (17mm, 1fr), ..rows)

// Values of the hero sheet, given by threes: the value, its formula (none_formula if it has
// none), then how to fill it in. The formula opens the second cell, in gray and bold.
#let none_formula = none
#let sheet_values(..rows) = {
  let cells = rows.pos()
  values(columns: (24mm, 1fr), header: ("Value", "How to fill it in"),
    ..range(0, cells.len(), step: 3).map(i => {
      let (value, formula, how) = cells.slice(i, i + 3)
      (value, if formula == none { how } else [#text(fill: reminder_color, weight: "bold", formula)\ #how])
    }).flatten())
}

// Every definition of a dictionary, sorted by name.
#let definitions(dict) = {
  set text(size: 8.5pt)
  set par(spacing: 0.7em)
  for (_, d) in dict.pairs().sorted(key: p => p.at(0)) [#d

  ]
}

#rules_page(
  name: "Glossary",
  intro: [Every condition, keyword and abbreviation, and how to fill in your hero sheet.],
)[

#section("Conditions")[
  A creature has a condition or doesn't. Conditions don't stack.

  #definitions(conditions)
]

#part("Keywords", intro: [Keywords are the words every card uses the same way. Each card
  reminds the ones it uses.])

#subsection("General")[
  #definitions(keywords)
]

#subsection("Class")[
  Some classes have keywords of their own.

  #definitions(berserker_keywords + hunter_keywords + mage_keywords + stormshifter_keywords)
]

#verso

#section("Abbreviations")[
  The short words used by the rules.

  #abbr(
    [#STR], [Strength, one of your 4 stats.],
    [#DEX], [Dexterity, one of your 4 stats.],
    [#INT], [Intelligence, one of your 4 stats.],
    [#WIL], [Willpower, one of your 4 stats.],
    [#KEY], [One of your Key Stats, the 2 stats your class sheet names.],
    [#LVL], [Your level.],
    [#HP], [Hit points.],
    [DC], [The number a check must beat to succeed.],
    [GM], [The Game Master.],
  )
]

#part("Hero sheet", intro: [Each value of your hero sheet, with its formula and how to fill it
  in. Write in pencil, since most values change as you level up.])

#subsection("Identity")[
  #sheet_values(
    [Hero, Player], none_formula, [Your hero's name and yours.],
    [Class, Subclass], none_formula, [Your class sheet. You choose your subclass when your
    class sheet says so.],
    [Ancestry, Background], none_formula, [The cards you chose.],
    [Level], [1 + levels gained], [1 at first, then 1 more each time the GM gives you a
    level.],
    [Vitality], [Class Vitality + #STR], [The Vitality of your class sheet, plus your #STR.],
    [Size], [Ancestry size], [The size your ancestry card gives.],
  )
]

#subsection("Narrative")[
  Your stats, your skills and the points you have left to spend.

  #sheet_values(
    [Stat points], [5 + (#LVL − 1) − spent], [5 at level 1 and 1 more at each level. Take off
    the points you spend. Unspent points are kept.],
    [Skill points], [10 + #times(2, "(" + LVL + " − 1)") − spent], [10 at level 1 and 2 more at each level.
    Take off the points you spend.],
    [#KEY], none_formula, [Tick the 2 Key Stats your class sheet names.],
    [Stat], [Raising it to N costs N], [0 at first. Raising a stat by 1 costs as many stat
    points as its new value, so going from 2 to 3 costs 3.],
    [Skill], [Raising it to N costs N], [0 at first. Raising a skill by 1 costs as many skill
    points as its new value.],
    [Total], [Stat + Skill], [What you add to a check with that skill.],
  )
]

#subsection("Equipment")[
  What you carry, and the room you have for it.

  #sheet_values(
    [Slots used], [Sum of SLOT, out of 10 + #STR], [Add up the SLOT of every item you carry.
    Your maximum is 10 plus your #STR.],
    [Magic items], [2, + 1 at levels 5, 10 and 15], [The magic items you carry, out of the
    number your class sheet gives for your level.],
    [Armor, #card_ref("Shield")], none_formula, [The armor and the shield you wear, if any.],
    [Items], [SLOT of each item], [Each item you carry, with its SLOT.],
  )
]

#subsection("Combat")[
  The values you use in a fight.

  #sheet_values(
    [Max #HP], [10 + #times(LVL, "Vitality")], [Raise it each time you gain a level or your
    Vitality changes.],
    [Current #HP], [Max #HP − damage], [Take off the damage you take, and add what you heal,
    up to your max. A #safe_rest brings it back to your max.],
    [Temp #HP], none_formula, [The temporary #HP an effect gives you. They are lost when
    combat ends.],
    [#defense], [#DEX + armor #def_label + shield #def_label], [Your #DEX, plus the #def_label
    of the armor and of the shield you wear.],
    [Initiative], [#DEX], [What you add to your Initiative roll.],
    [Speed], [6], [How many spaces you move. Some cards change it.],
    [Mana], [Your mana pool card], [Its max is on your class's mana pool card. Spend it on
    tiered spells. A #safe_rest brings it back.],
    [Resource], [Its card], [The name and the max of a class resource, such as
    #card_ref("Fury Dice"), from its card.],
    [Wounds], [6 at most], [Tick 1 circle for each Wound. At the 6th, you die. A #safe_rest
    clears them all. Some ancestries change the number.],
  )
]

#subsection("Levels")[
  #sheet_values(
    [Levels], none_formula, [At each level, what you gained and what you chose, from the
    row of that level on your class sheet.],
  )
]

#part("Cards", intro: [The letters below the name of each kind of card, then the capsules
  above their effects.])

#subsection("Spells")[

  #abbr(
    [ACT], [The actions it costs. With no ACT, its text says how it is cast.],
    [MANA], [The mana it costs, equal to its tier. Cantrips cost none.],
    [CAST], [Its casting time, in minutes, for a spell cast outside combat.],
    [CONC], [It needs #kw_concentration, for up to this long.],
    [DMG], [The damage it deals.],
    [RNGE], [How far away its target can be.],
    [REACH], [How far around you it reaches, or the shape of its area, such as Cone 4.],
    [AREA], [The size of the area it affects.],
  )
]

#subsection("Items")[
  Weapons, armor and other items.

  #abbr(
    [#LVL], [The level you need to use it.],
    [DMG], [The damage of a weapon.],
    [#def_label], [The #defense bonus of an armor or a shield.],
    [REACH], [How far a melee weapon reaches.],
    [RNGE], [How far a ranged weapon reaches.],
    [CHRG], [Its charges. Each use spends 1, and they come back after a #safe_rest.],
    [SLOT], [The inventory slots it takes.],
  )
]

#subsection("Creatures")[
  #abbr(
    [ACT], [Its actions per turn. With no ACT, it has 1.],
    [#HP], [Its hit points.],
    [#def_label], [Its #defense, taken off the damage of each attack.],
    [#spd_label], [Its #speed. With no #spd_label, it is 6.],
    [SIZ], [Its size, T for Tiny, S for Small, L for Large, H for Huge and G for Gargantuan.
    With no SIZ, it is Medium.],
    [#LVL], [Its level, for Building an encounter.],
    [#STR], [Its Strength. With no #STR, it is 0.],
    [#DEX], [Its Dexterity. With no #DEX, it is 0.],
    [#INT], [Its Intelligence. With no #INT, it is 0.],
    [#WIL], [Its Willpower. With no #WIL, it is 0.],
  )
]

#subsection("Classes")[
  Some class resources have a short name.

  #abbr(
    [#TotH], [#thrill_of_the_hunt charges, for the Hunter.],
    [Mom], [#card_ref("Momentum") charges, for the Zephyr.],
    [BoS], [#card_ref("Burst of Speed") charges, for the Zephyr.],
  )
]


#subsection("Capsules")[
  The dark capsule says what kind of effect follows. The outlined capsules after it give its
  cost, its limits and its attack.

  #let capsules(..rows) = values(columns: (24mm, 1fr), ..rows)
  #capsules(
    [#mode_badge("narrative")], [An effect for exploration and role-play, such as
    #kw_advantage on some checks.],
    [#mode_badge("passive")], [Always on, or triggered on its own. It costs no action.],
    [#mode_badge("active")], [You choose to use it, and pay what the outlined capsules
    show.],
    [#mode_badge("lost")], [What a subclass takes away from your class.],
    [#dark_badge("Levels")], [What changes as you level up. Each line gives the value from
    that level on, and replaces the one before.],
    [#dark_badge("Upcast")], [What each extra mana adds to the spell.],
    [#tag_badge(actions("X"))], [The actions it costs.],
    [#tag_badge(mana("X"))], [The mana it costs.],
    [#tag_badge(charge_cost("X"))], [The charges of the item it spends. A class resource works the
    same way, such as #tag_badge(toth_charges("X")).],
    [#tag_badge(wounds("X"))], [You gain that many Wounds to use it.],
    [#tag_badge(per_turn("X"))], [How many times you can use it per turn. X/Round,
    X/Encounter and X/Rest work the same way.],
    [#tag_badge(key_rest)], [As many times as your #KEY between two #safe_rest periods.],
    [#tag_badge("AoE")], [It affects an area, and the Areas rule of the Combat page applies.],
    [#tag_badge("X Attacks")], [The number of attacks it makes.],
    [#tag_badge("Reach X")], [How far its attack reaches. A Range capsule works the same
    way.],
    [#tag_badge("XdY Damage")], [The damage of its attack.],
  )
]
]

/*
review: style=2026-11-14 changelog=2026-10-02

Source: game/conditions.typ, game/keywords.typ and the class keyword files
(game/class/<class>/<class>_keywords.typ). The page only gathers their definitions, sorted by
name: change a definition in its file, never here.

interpretation: One page for every condition and keyword (user ruling 2026-11-28), so the other
rules pages don't repeat them: the Combat page loses its Conditions list and the Difficult
Terrain, Cover and Full Cover definitions, the Adventure page the Advantage and Disadvantage
definitions. Keywords common to every class come first, then each class's own keywords, in one Class
keywords section, with no class name (user ruling 2026-11-28: they are few). A class with no
keyword file is not listed.

interpretation: The verso (user ruling 2026-11-28, the page may take 3 sides) gives the formula
(in gray and bold, at the top of its cell, not in a column of its own) and the way to fill in
each value of the hero sheet, one section per part of the sheet, then
lists every abbreviation, sorted by where
it is found (the stat rows of spell, item and creature cards come from
templates/creat_spell.typ, creat_item.typ and creat_creature.typ, the capsules from
game/terms.typ).
The hero sheet values come from templates/hero_sheet.typ.
They are only here: the Magic page no longer has its spell card legend, and the Adventure page
(Making a hero, step 4) sends here for the sheet's values. A new stat label or sheet field needs
a line here.
*/
