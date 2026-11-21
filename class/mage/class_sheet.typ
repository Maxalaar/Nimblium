#import "../../global.typ": *
#import "../../card_structure/class_sheet.typ": class_sheet, minor, by_level

#let r = card_ref
#let stat_up(body) = minor[#body]

#class_sheet(
  name: "Mage",
  icon: "mage.svg",
  intro: [Elemental power flows through all things. Find it, study it and harness it.],
  info: (
    ("Key stats", [#INT, #WIL]),
    ("Hit die", [1d6]),
    ("Starting HP", [10]),
    ("Saves", [#INT\+, #STR\−]),
    ("Armor", [Cloth]),
    ("Weapons", [Blades, staves, wands]),
    ("Starting gear", [Adventurer's garb, staff, soap]),
    ("Spell schools", [Fire, Ice, Lightning]),
  ),
  levels: (
    (none, [Fire, Ice and Lightning cantrips.]),
    (1, [#r("Mage Mana Pool"). Fire, Ice and Lightning tier 1 spells. #r("Talented Researcher").]),
    (1, [Subclass: Invoker of Control or Invoker of Chaos. Utility Spells of 1 school you know.]),
    (2, [#r("Spellshaper"): choose 2 Spellshaper abilities. #stat_up[+1 #INT or #WIL.]]),
    (2, [#r("Elemental Surge"). Upgraded cantrips. #stat_up[+1 #STR or #DEX.]]),
    (3, [Utility Spells of a 2nd school you know.]),
    (3, [Subclass feature.]),
    (4, [#stat_up[+1 #INT or #WIL.]]),
    (4, [Choose 1 more Spellshaper ability. #stat_up[+1 #STR or #DEX.]]),
    (5, [#r("Elemental Surge") regains #WIL+1d4 mana. Upgraded cantrips.]),
    (5, [Subclass feature.]),
    (6, [#stat_up[+1 #INT or #WIL.]]),
    (6, [Choose 1 more Spellshaper ability. #stat_up[+1 #STR or #DEX.]]),
    (7, [Utility Spells of a 3rd school you know.]),
    (7, [Subclass feature. Upgraded cantrips.]),
    (8, [#stat_up[+1 #INT or #WIL.]]),
    (8, [#r("Elemental Surge") regains #WIL+2d4 mana. #stat_up[+1 #STR or #DEX.]]),
    (9, []),
    (9, [Epic Boon.]),
    (9, [#r("Archmage"). Upgraded cantrips. #stat_up[+1 to any 2 stats.]]),
  ),
  boxes: (
    ([Invoker of Control], by_level(
      (3, [#r("Force of Will"), #r("Deny Fate"), #r("Control Table").]),
      (7, [#r("Nullify"). 1 Necrotic cantrip and 1 Necrotic tiered spell.]),
      (11, r("Steel Will")),
      (15, r("Supreme Control")),
    )),
    ([Invoker of Chaos], by_level(
      (3, r("Force of Chaos")),
      (7, [#r("Chaos Lash"). 1 Wind cantrip and 1 Wind tiered spell.]),
      (11, r("Thrive in Chaos")),
      (15, r("Master of Chaos")),
    )),
    ([Spellshaper abilities], [
      #r("Dimensional Compression")\
      #r("Echo Casting")\
      #r("Elemental Destruction")\
      #r("Elemental Transmutation")\
      #r("Extra-Dimensional Vision")\
      #r("Methodical Spellweaver")\
      #r("Precise Casting")\
      #r("Stretch Time")
    ]),
  ),
)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.31-35 and the 2026-10-02 changelog (Mage: class table reworded, no rules
change). Study! (change your choices on a Safe Rest) is not used: global house rule in
nimblium_documents/README.txt.
*/
