#import "/global.typ": *
#import "/templates/class_sheet.typ": class_sheet, minor, by_level

#let stat_up(body) = minor[#body]
#let n = none

#class_sheet(
  name: "Shepherd",
  icon: "shepherd.svg",
  intro: [Let all who are afflicted come. I will mend thy bones and soothe thy wounds.],
  info: (
    ("Key stats", [#WIL, #STR]),
    ("Hit die", [1d10]),
    ("Starting HP", [17]),
    ("Saves", [#WIL\+, #DEX\−]),
    ("Armor", [Mail, shields]),
    ("Weapons", [#STR weapons, wands]),
    ("Spell schools", [Radiant, Necrotic]),
  ),
  levels: (
    (n, [Radiant and Necrotic cantrips. #card_ref("Searing Light").]),
    (1, [#card_ref("Shepherd Mana Pool"). Radiant and Necrotic tier 1 spells. #card_ref("Lifebinding Spirit") and its #card_ref("Spirit Companion").]),
    (1, [Subclass: Luminary of Mercy or Luminary of Malice. 1 Necrotic and 1 Radiant Utility Spell.]),
    (2, [#stat_up[+1 #WIL or #STR.]]),
    (2, [Sacred Graces: choose 2. Upgraded cantrips. #stat_up[+1 #INT or #DEX.]]),
    (3, [1 more Necrotic and 1 more Radiant Utility Spell.]),
    (3, [Subclass feature.]),
    (4, [#stat_up[+1 #WIL or #STR.]]),
    (4, [Choose 1 more Sacred Grace. #stat_up[+1 #INT or #DEX.]]),
    (5, [Upgraded cantrips.]),
    (5, [Subclass feature. All Necrotic and Radiant Utility Spells.]),
    (6, [#stat_up[+1 #WIL or #STR.]]),
    (6, [Choose 1 more Sacred Grace. #stat_up[+1 #INT or #DEX.]]),
    (7, []),
    (7, [Subclass feature. Upgraded cantrips.]),
    (8, [#stat_up[+1 #WIL or #STR.]]),
    (8, [#card_ref("Revitalizing Blessing"). #stat_up[+1 #INT or #DEX.]]),
    (9, []),
    (9, [Epic Boon.]),
    (9, [#card_ref("Twilight Sage"). Upgraded cantrips. #stat_up[+1 to any 2 stats.]]),
  ),
  boxes: (
    ([Luminary of Mercy], by_level(
      (3, [#card_ref("Merciful Healing"), #card_ref("Life is Beautiful").]),
      (7, card_ref("Conduit of Light")),
      (11, card_ref("Powerful Healer")),
      (15, card_ref("Empowered Conduit")),
    )),
    ([Luminary of Malice], by_level(
      (3, [#card_ref("Soul Reaper"), #card_ref("Harbinger of Decay").]),
      (7, card_ref("Veilwalker's Blessing")),
      (11, card_ref("Deathbringer's Touch")),
      (15, card_ref("Conduit of Death")),
    )),
    ([Sacred Graces], [
      #card_ref("Assist Me, My Friend!")\
      #card_ref("Empowered Companion")\
      #card_ref("Guiding Spirit")\
      #card_ref("Hasty Companion")\
      #card_ref("Illuminate Soul")\
      #card_ref("Light Bearer")\
      #card_ref("Not Beyond MY Reach")\
      #card_ref("Vengeful Spirit")
    ]),
  ),
)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.49-53. The Shepherd keeps the house-rule companion (game/class/shepherd/mod.typ):
Lifebinding Spirit stays a tier 1 spell at level 2, Searing Light stays at level 1. Serve
(change your choices on a Safe Rest) is not used: global house rule in
nimblium_documents/README.txt.
*/
