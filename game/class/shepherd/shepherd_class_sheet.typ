#import "/global.typ": *
#import "/templates/class_sheet.typ": class_sheet, minor, by_level

#let n = none

#class_sheet(
  name: "Shepherd",
  icon: "shepherd.svg",
  intro: [Let all who are afflicted come. I will mend thy bones and soothe thy wounds.],
  difficulty: 2,
  description: [A healer who walks between life and death, followed by a loyal spirit. The Shepherd keeps allies on their feet and strikes down what threatens them, with the spirit always at their side. You are the one who decides who lives and who falls.],
  info: (
    ("Key stats", [#WIL, #STR]),
    ("Vitality", [6 + #STR]),
    ("Armor", [Cloth, leather, mail, shields]),
  ),
  levels: (
    (n, [Radiant and Necrotic cantrips. #card_ref("Searing Light").]),
    (1, [#card_ref("Shepherd Mana Pool"). Radiant and Necrotic tier 1 spells. #card_ref("Lifebinding Spirit") and its #card_ref("Spirit Companion").]),
    (1, [Choose a subclass, Luminary of Mercy or Luminary of Malice. 1 Necrotic and 1 Radiant Utility Spell.]),
    (2, []),
    (2, [Choose 2 Sacred Graces.]),
    (3, [1 more Necrotic and 1 more Radiant Utility Spell.]),
    (3, [Subclass feature.]),
    (4, []),
    (4, [Choose 1 more Sacred Grace.]),
    (5, []),
    (5, [Subclass feature. All Necrotic and Radiant Utility Spells.]),
    (6, []),
    (6, [Choose 1 more Sacred Grace.]),
    (7, []),
    (7, [Subclass feature.]),
    (8, []),
    (8, [#card_ref("Revitalizing Blessing").]),
    (9, []),
    (9, []),
    (9, [#card_ref("Twilight Sage").]),
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
guides/house_rules.txt.

house-rule: No stat increases at set levels: every row of the level table shows the HP, stat
points and skill points that level gives (5 stat and 10 skill points at level 1, then +1 and +2),
with no "All" row (user ruling 2026-11-28).
*/
