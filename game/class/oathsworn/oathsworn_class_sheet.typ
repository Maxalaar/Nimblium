#import "/global.typ": *
#import "/templates/class_sheet.typ": class_sheet, minor, by_level, locked

#let n = none

#class_sheet(
  name: "Oathsworn",
  icon: "oathsworn.svg",
  intro: [I will protect my companions and vanquish evil at all costs.],
  difficulty: 2,
  description: [A faithful guardian sworn to protect the weak. The Oathsworn stands between their allies and danger, takes the blows meant for others and answers with radiant judgment. You are the shield of the party, and the enemies who strike your friends will regret it.],
  info: (
    ("Key stats", [#STR, #WIL]),
    ("Vitality", [6 + #STR]),
    ("Armor", [Cloth, leather, mail, plate, shields]),
  ),
  levels: (
    (n, [#card_ref("Radiant Judgment"). #card_ref("Lay on Hands").]),
    (1, [#card_ref("Oathsworn Mana Pool"). Radiant cantrips and tier 1 spells. #card_ref("Zealot"). #card_ref("Paragon of Virtue").]),
    (1, [Choose a subclass, Oath of Vengeance, Oath of Refuge or Oathbreaker. Choose 1 Sacred Decree.]),
    (2, [#card_ref("My Life, for My Friends").]),
    (2, []),
    (3, [Choose 1 more Sacred Decree.]),
    (3, [Subclass feature. 1 Radiant Utility Spell.]),
    (4, []),
    (4, [Choose 1 more Sacred Decree.]),
    (5, []),
    (5, [Subclass feature. 1 more Radiant Utility Spell.]),
    (5, [Choose 1 more Sacred Decree.]),
    (6, []),
    (6, [Choose 1 more Sacred Decree.]),
    (6, [Subclass feature.]),
    (6, [Choose 1 more Sacred Decree.]),
    (7, []),
    (7, [#card_ref("Unending Judgment").]),
    (7, [Epic Boon.]),
    (7, [#card_ref("Glorious Paragon").]),
  ),
  boxes: (
    ([Oath of Vengeance], by_level(
      (3, card_ref("Aura of Zeal")),
      (7, card_ref("Avenger")),
      (11, card_ref("Unerring Judgment")),
      (15, card_ref("Maximum Judgment")),
    )),
    ([Oath of Refuge], by_level(
      (3, card_ref("Aura of Refuge")),
      (7, card_ref("Face Me, Foul Creature!")),
      (11, card_ref("Glorious Reprieve")),
      (15, card_ref("Divine Grace")),
    )),
    (locked[Oathbreaker], by_level(
      (3, [#card_ref("Dark Benediction"), #card_ref("Paragon of Power"), #card_ref("Aura of Suffering"), #card_ref("We All Suffer"), #card_ref("Bring Me Your Pain").]),
      (7, card_ref("Torment")),
      (11, card_ref("Exploit")),
      (15, card_ref("Bloody Terror")),
    )),
    ([Sacred Decrees], [
      #card_ref("Blinding Aura")\
      #card_ref("Courage!")\
      #card_ref("Explosive Judgment")\
      #card_ref("Improved Aura")\
      #card_ref("Radiant Aura")\
      #card_ref("Reliable Justice")\
      #card_ref("Shining Mandate")\
      #card_ref("Stand Fast, Friends!")\
      #card_ref("Unstoppable Protector")\
      #card_ref("Well Armored")
    ]),
  ),
)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.37-41 and the 2026-10-02 changelog (weapons: melee STR weapons; Zealot,
Radiant Judgment, Explosive Judgment, Unstoppable Protector, Glorious Reprieve). Tiers: 1 at
level 2, 2 at 4, 3 at 6, 4 at 8, 5 at 10, 6 at 13, 7 at 17. Serve Selflessly (change your
choices on a Safe Rest) is not used: global house rule in guides/house_rules.txt.

house-rule: No stat increases at set levels: every row of the level table shows the HP, stat
points and skill points that level gives (5 stat and 10 skill points at level 1, then +1 and +2),
with no "All" row (user ruling 2026-11-28).
*/
