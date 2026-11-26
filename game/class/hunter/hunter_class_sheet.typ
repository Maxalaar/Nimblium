#import "/global.typ": *
#import "/templates/class_sheet.typ": class_sheet, minor, by_level

#let stat_up(body) = minor[#body]
#let n = none

#class_sheet(
  name: "Hunter",
  icon: "hunter.svg",
  intro: [Respect the forest and her children, and she will bestow upon you many gifts.],
  info: (
    ("Key stats", [#DEX, #WIL]),
    ("Hit die", [1d8]),
    ("Starting HP", [13]),
    ("Saves", [#DEX\+, #INT\−]),
    ("Armor", [Leather]),
    ("Weapons", [#DEX weapons]),
  ),
  levels: (
    (n, [#card_ref("Hunter's Mark"). #card_ref("Forager").]),
    (n, [#card_ref("Thrill of the Hunt Charge"). #thrill_of_the_hunt: choose 2 abilities. #card_ref("Roll & Strike").]),
    (n, [Subclass: Keeper of the Shadowpath or Keeper of the Wild Heart. #card_ref("Tracker's Intuition").]),
    (n, [Choose 1 more #thrill_of_the_hunt ability. #card_ref("Explorer of the Wilds"). #stat_up[+1 #DEX or #WIL.]]),
    (n, [#card_ref("Hunter's Resolve"). #card_ref("Final Takedown"). #stat_up[+1 #STR or #INT.]]),
    (n, [#card_ref("Versatile Bowmaster"). Choose 1 more #thrill_of_the_hunt ability.]),
    (n, [Subclass feature.]),
    (n, [Choose 1 more #thrill_of_the_hunt ability. #stat_up[+1 #DEX or #WIL.]]),
    (n, [#card_ref("No Escape"). #stat_up[+1 #STR or #INT.]]),
    (n, [#card_ref("Veteran Stalker"). #card_ref("Keen Eye, Steady Hand").]),
    (n, [Subclass feature.]),
    (n, [Choose 1 more #thrill_of_the_hunt ability. #stat_up[+1 #DEX or #WIL.]]),
    (n, [#card_ref("Keen Sight"). #stat_up[+1 #STR or #INT.]]),
    (n, [Choose 1 more #thrill_of_the_hunt ability.]),
    (n, [Subclass feature.]),
    (n, [#stat_up[+1 #DEX or #WIL.]]),
    (n, [#card_ref("Peerless Hunter"). #stat_up[+1 #STR or #INT.]]),
    (n, [#card_ref("Wild Endurance").]),
    (n, [Epic Boon.]),
    (n, [#card_ref("Nemesis"). #stat_up[+1 to any 2 stats.]]),
  ),
  boxes: (
    ([Keeper of the Shadowpath], by_level(
      (3, [#card_ref("Ambusher"), #card_ref("Skilled Tracker"), #card_ref("Skilled Navigator").]),
      (7, card_ref("Primal Predator")),
      (11, card_ref("Dread Hunter")),
      (15, card_ref("Apex Predator")),
    )),
    ([Keeper of the Wild Heart], by_level(
      (3, [#card_ref("Impressive Form"), #card_ref("I Have the High Ground").]),
      (7, card_ref("Resourceful Herbalist")),
      (11, card_ref("Ha! I'm Over Here!")),
      (15, card_ref("Unparalleled Survivalist")),
    )),
    ([#thrill_of_the_hunt], [
      #card_ref("Addling Arrow")\
      #card_ref("Come Get Some!")\
      #card_ref("Decoy")\
      #card_ref("Fleet Feet")\
      #card_ref("Grease Trap")\
      #card_ref("Hail of Arrows")\
      #card_ref("Heavy Shot")\
      #card_ref("Incendiary Shot")\
      #card_ref("Multishot")\
      #card_ref("Pinning Shot")\
      #card_ref("Sharpshooter")\
      #card_ref("Snare Trap")\
      #card_ref("Vital Shot")\
      #card_ref("Wild Instinct")
    ]),
  ),
)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.25-29 and the 2026-10-02 changelog (Dread Hunter replaces Pack Hunter at
level 11). Remember the Wild (change your choices on a Safe Rest) is not used: global house
rule in guides/house_rules.txt.
*/
