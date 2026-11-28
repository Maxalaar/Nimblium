#import "/global.typ": *
#import "/templates/class_sheet.typ": class_sheet, minor, by_level

#let n = none

#class_sheet(
  name: "Hunter",
  icon: "class/hunter.svg",
  intro: [Respect the forest and her children, and she will bestow upon you many gifts.],
  difficulty: 1,
  description: [A patient tracker who chooses its prey and never lets it go. The Hunter marks a single target and hunts it down, from afar or up close, with traps and precise shots. You read the battlefield, pick the most dangerous enemy and wear it down until it falls.],
  info: (
    ("Key stats", [#DEX, #WIL]),
    ("Vitality", [5 + #STR]),
    ("Armor", [Cloth, leather]),
  ),
  levels: (
    (n, [#card_ref("Hunter's Mark"). #card_ref("Forager").]),
    (n, [#card_ref("Thrill of the Hunt Charge"). Choose 2 #thrill_of_the_hunt abilities. #card_ref("Roll & Strike").]),
    (n, [Choose a subclass, Keeper of the Shadowpath or Keeper of the Wild Heart. #card_ref("Tracker's Intuition").]),
    (n, [Choose 1 more #thrill_of_the_hunt ability. #card_ref("Explorer of the Wilds").]),
    (n, [#card_ref("Hunter's Resolve"). #card_ref("Final Takedown").]),
    (n, [#card_ref("Versatile Bowmaster"). Choose 1 more #thrill_of_the_hunt ability.]),
    (n, [Subclass feature.]),
    (n, [Choose 1 more #thrill_of_the_hunt ability.]),
    (n, [#card_ref("No Escape").]),
    (n, [#card_ref("Veteran Stalker"). #card_ref("Keen Eye, Steady Hand").]),
    (n, [Subclass feature.]),
    (n, [Choose 1 more #thrill_of_the_hunt ability.]),
    (n, [#card_ref("Keen Sight").]),
    (n, [Choose 1 more #thrill_of_the_hunt ability.]),
    (n, [Subclass feature.]),
    (n, []),
    (n, [#card_ref("Peerless Hunter").]),
    (n, [#card_ref("Wild Endurance").]),
    (n, []),
    (n, [#card_ref("Nemesis").]),
  ),
  boxes: (
    ([Keeper of the Shadowpath], by_level(
      (3, [#card_ref("Ambusher"), #card_ref("Skilled Tracker"), #card_ref("Skilled Navigator").]),
      (7, card_ref("Primal Predator")),
      (11, card_ref("Dread Hunter")),
      (15, card_ref("Apex Predator")),
    )),
    ([Keeper of the Wild Heart], by_level(
      (3, [#card_ref("Impressive Form"), #card_ref("Swift Positioning").]),
      (7, card_ref("Resourceful Herbalist")),
      (11, card_ref("Narrow Escape")),
      (15, card_ref("Unparalleled Survivalist")),
    )),
    ([#thrill_of_the_hunt], [
      #card_ref("Addling Arrow")\
      #card_ref("Taunting Shot")\
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

house-rule: No stat increases at set levels. A box above the level table gives what every level
brings, the same for every class: HP, stat points, skill points and magic items (level 1: 10 +
Vitality HP, 5, 10 and 2; levels 2-20: +Vitality HP, +1, +2, and +1 magic item at levels 5, 10
and 15). User ruling 2026-11-28.
*/
