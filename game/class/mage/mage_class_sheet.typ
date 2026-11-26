#import "/global.typ": *
#import "/templates/class_sheet.typ": class_sheet, minor, by_level

#let stat_up(body) = minor[#body]

#class_sheet(
  name: "Mage",
  icon: "mage.svg",
  intro: [Elemental power flows through all things. Find it, study it and harness it.],
  difficulty: 3,
  description: [A master of fire, ice and lightning who bends the elements to their will. The Mage stays back and shapes the fight with powerful spells, from a single deadly bolt to storms that sweep the battlefield. You are fragile, so every turn is a choice, and the right spell at the right moment can turn the whole battle.],
  info: (
    ("Key stats", [#INT, #WIL]),
    ("Vitality", [4 + #STR]),
    ("Armor", [Cloth]),
  ),
  every_level: [+Vitality #HP, +1 skill point.],
  levels: (
    (none, [Fire, Ice and Lightning cantrips.]),
    (1, [#card_ref("Mage Mana Pool"). Fire, Ice and Lightning tier 1 spells. #card_ref("Talented Researcher").]),
    (1, [Choose a subclass, Invoker of Control or Invoker of Chaos. Utility Spells of 1 school you know.]),
    (2, [#card_ref("Spellshaper"). Choose 2 Spellshaper abilities. #stat_up[+1 #INT or #WIL.]]),
    (2, [#card_ref("Elemental Surge"). #stat_up[+1 #STR or #DEX.]]),
    (3, [Utility Spells of a 2nd school you know.]),
    (3, [Subclass feature.]),
    (4, [#stat_up[+1 #INT or #WIL.]]),
    (4, [Choose 1 more Spellshaper ability. #stat_up[+1 #STR or #DEX.]]),
    (5, []),
    (5, [Subclass feature.]),
    (6, [#stat_up[+1 #INT or #WIL.]]),
    (6, [Choose 1 more Spellshaper ability. #stat_up[+1 #STR or #DEX.]]),
    (7, [Utility Spells of a 3rd school you know.]),
    (7, [Subclass feature.]),
    (8, [#stat_up[+1 #INT or #WIL.]]),
    (8, [#stat_up[+1 #STR or #DEX.]]),
    (9, []),
    (9, [Epic Boon.]),
    (9, [#card_ref("Archmage"). #stat_up[+1 to any 2 stats.]]),
  ),
  boxes: (
    ([Invoker of Control], by_level(
      (3, [#card_ref("Force of Will"), #card_ref("Deny Fate"), #card_ref("Control Table").]),
      (7, [#card_ref("Nullify"). 1 Necrotic cantrip and 1 Necrotic tiered spell.]),
      (11, card_ref("Steel Will")),
    )),
    ([Invoker of Chaos], by_level(
      (3, card_ref("Force of Chaos")),
      (7, [#card_ref("Chaos Lash"). 1 Wind cantrip and 1 Wind tiered spell.]),
      (11, card_ref("Thrive in Chaos")),
      (15, card_ref("Master of Chaos")),
    )),
    ([Spellshaper abilities], [
      #card_ref("Dimensional Compression")\
      #card_ref("Echo Casting")\
      #card_ref("Elemental Destruction")\
      #card_ref("Elemental Transmutation")\
      #card_ref("Extra-Dimensional Vision")\
      #card_ref("Methodical Spellweaver")\
      #card_ref("Precise Casting")\
      #card_ref("Stretch Time")
    ]),
  ),
)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.31-35 and the 2026-10-02 changelog (Mage: class table reworded, no rules
change). Study! (change your choices on a Safe Rest) is not used: global house rule in
guides/house_rules.txt.
*/
