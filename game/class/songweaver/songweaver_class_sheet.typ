#import "/global.typ": *
#import "/templates/class_sheet.typ": class_sheet, minor, by_level

#let stat_up(body) = minor[#body]

#class_sheet(
  name: "Songweaver",
  icon: "songweaver.svg",
  intro: [Just TRY and resist my charm… wait, NO, don't!],
  info: (
    ("Key stats", [#WIL, #INT]),
    ("Hit die", [1d8]),
    ("Starting HP", [13]),
    ("Armor", [Cloth, leather]),
    ("Weapons", [#DEX weapons, wands]),
    ("Spell schools", [Wind, and 1 more at level 2]),
  ),
  levels: (
    (none, [Wind cantrips. #card_ref("Vicious Mockery"). #card_ref("Inspiration"), #card_ref("Songweaver's Inspiration").]),
    (1, [#card_ref("Songweaver Mana Pool"). A 2nd spell school: its cantrips. Tier 1 spells of your schools. #card_ref("Song of Rest").]),
    (1, [Subclass: Herald of Snark or Herald of Courage. #card_ref("Quick Wit"). 1 Utility Spell of each school you know.]),
    (2, [Lyrical Weaponry: choose 1. #stat_up[+1 #WIL or #INT.]]),
    (2, [Friends: choose 2. Upgraded cantrips. #stat_up[+1 #STR or #DEX.]]),
    (3, [1 more Utility Spell of each school you know.]),
    (3, [Subclass feature.]),
    (4, [#stat_up[+1 #WIL or #INT.]]),
    (4, [Choose 1 more Lyrical Weaponry. #stat_up[+1 #STR or #DEX.]]),
    (5, [Upgraded cantrips.]),
    (5, [Subclass feature.]),
    (6, [#stat_up[+1 #WIL or #INT.]]),
    (6, [Choose 1 more Lyrical Weaponry. #stat_up[+1 #STR or #DEX.]]),
    (7, [Every Utility Spell of the schools you know.]),
    (7, [Subclass feature. Upgraded cantrips.]),
    (8, [#stat_up[+1 #WIL or #INT.]]),
    (8, [Choose 1 more Lyrical Weaponry. #stat_up[+1 #STR or #DEX.]]),
    (9, []),
    (9, [Epic Boon.]),
    (9, [#card_ref("I'm So Famous!"). Upgraded cantrips. #stat_up[+1 to any 2 stats.]]),
  ),
  boxes: (
    ([Herald of Snark], by_level(
      (3, card_ref("Opportunistic Snark")),
      (7, card_ref("Fight Picker")),
      (11, card_ref("Chord of Chaos")),
      (15, card_ref("Words Like Swords")),
    )),
    ([Herald of Courage], by_level(
      (3, card_ref("Inspiring Presence")),
      (7, card_ref("Fire in My Bones")),
      (11, card_ref("Unfailing Resolve")),
      (15, card_ref("Chorus of Champions")),
    )),
    ([Options], [
      #text(size: 7.5pt, weight: "bold")[LYRICAL WEAPONRY]\
      #card_ref("Heroic Ballad"), #card_ref("Inspiring Anthem"), #card_ref("Not My Beautiful Faaace!"), #card_ref("Rhapsody of the Normal"), #card_ref("Song of Domination").

      #text(size: 7.5pt, weight: "bold")[FRIENDS]\
      #card_ref("Stompy"), #card_ref("Gran Gran"), #card_ref("Mal, the Malevolent Imp"), #card_ref("Linos, the Everfriendly").
    ]),
  ),
)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.55-59 and the 2026-10-02 changelog (the 2nd spell school at level 2, Windbag
renamed I Know Just the Song, Fire in My Bones at level 7, Unfailing Resolve at level 11).
Jack of All Trades and Perform! (change your choices on a Safe Rest) are not used: global house
rule in guides/house_rules.txt. A "People" Person becomes Friends: 2 creatures of your choice that
follow you (house rule). I Know Just the Song only gives spells: no card, the table says
what to take.
*/
