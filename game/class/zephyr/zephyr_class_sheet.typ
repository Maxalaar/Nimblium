#import "/global.typ": *
#import "/templates/class_sheet.typ": class_sheet, minor, by_level

#let n = none

#class_sheet(
  name: "Zephyr",
  icon: "zephyr.svg",
  intro: [Speed is both their weapon and their shield.],
  difficulty: 3,
  description: [A martial artist who has turned swiftness into a weapon. The Zephyr never stays still, darting across the battlefield with bare hands and supernatural agility. The faster you move, the harder you hit, and a turn spent standing still wastes your power.],
  info: (
    ("Key stats", [#DEX, #STR]),
    ("Vitality", [4 + #STR]),
    ("Armor", [None]),
  ),
  levels: (
    (n, [#card_ref("Martial Training"), #card_ref("Iron Defense"), #card_ref("Momentum"), #card_ref("Kinetic Strikes").]),
    (n, [#card_ref("Burst of Speed"), #card_ref("Maneuvers"). #card_ref("Piercing Blows").]),
    (n, [Choose a subclass, Way of Pain or Way of Flame.]),
    (n, [Choose 1 Martial Arts ability.]),
    (n, [#card_ref("Supernatural Speed").]),
    (n, [Choose 1 more Martial Arts ability. #card_ref("Infuse Strength").]),
    (n, [Subclass feature.]),
    (n, [Choose 1 more Martial Arts ability.]),
    (n, [#card_ref("Swift Feet").]),
    (n, [#card_ref("Unyielding Resolve").]),
    (n, [Subclass feature.]),
    (n, [Choose 1 more Martial Arts ability.]),
    (n, []),
    (n, []),
    (n, []),
    (n, []),
    (n, []),
    (n, [Choose 1 more Martial Arts ability.]),
    (n, []),
    (n, [#card_ref("Windborne").]),
  ),
  boxes: (
    ([Way of Pain], by_level(
      (3, card_ref("Bring the Pain")),
      (7, card_ref("Share My Pain")),
      (11, card_ref("Pain Sharpens the Mind")),
    )),
    ([Way of Flame], by_level(
      (3, card_ref("Exploding Soul")),
      (7, card_ref("Burning Palm")),
      (11, card_ref("Chain Reaction")),
    )),
    ([Martial Arts], [
      #card_ref("Airshift"), #card_ref("Bodily Discipline"), #card_ref("Cyclonic Pull"), #card_ref("Enduring Soul"), #card_ref("I Jump On His Back!"), #card_ref("Kinetic Barrage"), #card_ref("Mighty Soul"), #card_ref("Quickstrike"), #card_ref("Twisting Deflection"), #card_ref("Windstrider").
    ]),
  ),
)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.66-71 and the 2026-10-02 changelog (the class rebuilt around Momentum; Martial
Master at levels 4, 6, 8, 12 and 18; Swift Feet at 9 and 16; Unyielding Resolve at 10, 13 and
17; Iron Defense (2) at 4; Reactive Force at 3; Swift Fists at 6). Focus (change your choices
on a Safe Rest) is not used: global house rule in guides/house_rules.txt. Martial Training is
the Zephyr's unarmed proficiency (no weapon proficiency in Nimblium).

house-rule: No stat increases at set levels. A box above the level table gives what every level
brings, the same for every class: HP, stat points, skill points and magic items (level 1: 10 +
Vitality HP, 5, 10 and 2; levels 2-20: +Vitality HP, +1, +2, and +1 magic item at levels 5, 10
and 15). User ruling 2026-11-28.
*/
