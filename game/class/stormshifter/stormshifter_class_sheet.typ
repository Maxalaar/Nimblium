#import "/global.typ": *
#import "/templates/class_sheet.typ": class_sheet, minor, by_level

#class_sheet(
  name: "Stormshifter",
  icon: "stormshifter.svg",
  intro: [Do not provoke the forest or its inhabitants.],
  difficulty: 3,
  description: [A druid of beasts and storms. The Stormshifter shifts between fearsome animal forms and the raw power of lightning and wind. You adapt to every fight, tearing through enemies as a beast one moment and calling down the storm the next.],
  info: (
    ("Key stats", [#WIL, #DEX]),
    ("Vitality", [5 + #STR]),
    ("Armor", [Cloth, leather]),
  ),
  levels: (
    (none, [Lightning and Wind cantrips. #card_ref("Beastshift"), #card_ref("Harmless Beast"). #card_ref("Fearsome Beast").]),
    (1, [#card_ref("Stormshifter Mana Pool"). Lightning and Wind tier 1 spells. #card_ref("Beast of the Pack").]),
    (1, [Choose a subclass, Circle of Sky & Storm or Circle of Fang & Claw.]),
    (2, [1 Utility Spell of each school you know.]),
    (2, [#card_ref("Beast of Nightmares").]),
    (3, [Choose 2 Chimeric Boons.]),
    (3, [Subclass feature. 1 more Utility Spell of each school you know.]),
    (4, [#card_ref("Stormborn").]),
    (4, [Choose 1 more Chimeric Boon.]),
    (5, []),
    (5, [Subclass feature.]),
    (6, [Choose 1 more Chimeric Boon.]),
    (6, []),
    (7, []),
    (7, [Subclass feature.]),
    (8, []),
    (8, [Choose 1 more Chimeric Boon.]),
    (9, []),
    (9, []),
    (9, []),
  ),
  boxes: (
    ([Circle of Sky & Storm], by_level(
      (3, [Ice or Radiant cantrips and spells. #card_ref("Creature of the Fey"), #card_ref("Attuned to Nature").]),
      (7, card_ref("Raging Tempest")),
      (11, card_ref("Primordial Force")),
      (15, card_ref("Master of Storm")),
    )),
    ([Circle of Fang & Claw], by_level(
      (3, [#card_ref("Swiftshift"), #card_ref("Unleash the Beast").]),
      (7, [#card_ref("Windborne Protector"), #card_ref("Stormstrider").]),
      (11, card_ref("Master of Forms")),
      (15, card_ref("Chimeric Sovereign")),
    )),
    ([Chimeric Boons], [
      #card_ref("Beast of the Sea"), #card_ref("Climber"), #card_ref("Earthwalker"), #card_ref("Fleet Footed"), #card_ref("Keen Senses"), #card_ref("Leader of the Pack"), #card_ref("Phasebeast"), #card_ref("Prehensile Tail"), #card_ref("Winged").
    ]),
  ),
)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.61-65 and the 2026-10-02 changelog (Fearsome Beast at level 1, Beast of the
Pack at level 2, Direbeast forms DEX times per encounter, Expert Shifter removed, Fang & Claw
rebuilt). Be Wild (change your choices on a Safe Rest) is not used: global house rule in
guides/house_rules.txt. Master of Storms, Deepening Study and Stormcaller only give spells: no
card, the table says what to take.

house-rule: No stat increases at set levels: every row of the level table shows the HP, stat
points and skill points that level gives (5 stat and 10 skill points at level 1, then +1 and +2),
with no "All" row (user ruling 2026-11-28).
*/
