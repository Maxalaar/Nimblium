#import "/global.typ": *
#import "/templates/class_sheet.typ": class_sheet, minor, by_level

#let n = none

#class_sheet(
  name: "Berserker",
  icon: "berserker.svg",
  intro: [Wrath and ruin. The Berserker is destruction.],
  difficulty: 1,
  description: [Fury made flesh. The Berserker charges into the thick of the fight and stays there, trading blows up close while others keep their distance. The longer the battle rages, the more dangerous you become. It is a reckless way to fight, taking risks and pain to deal huge damage and trusting your toughness to carry you through.],
  info: (
    ("Key stats", [#STR, #DEX]),
    ("Vitality", [7 + #STR]),
    ("Armor", [None]),
  ),
  levels: (
    (n, [#card_ref("Rage"), #card_ref("Fury Dice"), #card_ref("That all you got?!").]),
    (n, [#card_ref("Intensifying Fury"). #card_ref("One with the Ancients").]),
    (n, [Choose a subclass, Path of the Mountainheart or Path of the Red Mist. #card_ref("Bloodlust").]),
    (n, [#card_ref("Enduring Rage"). Choose 1 Savage Arsenal ability.]),
    (n, []),
    (n, [Choose 1 more Savage Arsenal ability.]),
    (n, [Subclass feature.]),
    (n, [Choose 1 more Savage Arsenal ability.]),
    (n, []),
    (n, [Choose 1 more Savage Arsenal ability.]),
    (n, [Subclass feature.]),
    (n, [Choose 1 more Savage Arsenal ability.]),
    (n, []),
    (n, [Choose 1 more Savage Arsenal ability.]),
    (n, [Subclass feature.]),
    (n, [Choose 1 more Savage Arsenal ability.]),
    (n, []),
    (n, [#card_ref("Deep Rage").]),
    (n, []),
    (n, []),
  ),
  boxes: (
    ([Path of the Mountainheart], by_level(
      (3, [#card_ref("Stone's Resilience"), #card_ref("Mountainous Tenacity").]),
      (7, card_ref("Unbreakable")),
      (11, card_ref("Titan's Fury")),
      (15, card_ref("Mountain's Endurance")),
    )),
    ([Path of the Red Mist], by_level(
      (3, [#card_ref("Blood Frenzy"), #card_ref("Savage Awareness").]),
      (7, card_ref("Unstoppable Brutality")),
      (11, card_ref("Opportunistic Frenzy")),
      (15, card_ref("Onslaught")),
    )),
    ([Savage Arsenal], [
      #card_ref("Death Blow")\
      #card_ref("Deathless Rage")\
      #card_ref("Dismantle")\
      #card_ref("Eager for Battle")\
      #card_ref("Into the Fray")\
      #card_ref("Mighty Endurance")\
      #card_ref("MORE BLOOD!")\
      #card_ref("Rampage")\
      #card_ref("Swift Fury")\
      #card_ref("Thunderous Steps")\
      #card_ref("Unstoppable Force")\
      #card_ref("Whirlwind")\
      #card_ref("You're Next!")
    ]),
  ),
)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.7-11 and the 2026-10-02 changelog (Boundless Rage, Dismantle). Wrath & Ruin
(change your choices on a Safe Rest) is not used: global house rule in
guides/house_rules.txt.

house-rule: No stat increases at set levels. A box above the level table gives what every level
brings, the same for every class: HP, stat points, skill points and magic items (level 1: 10 +
Vitality HP, 5, 10 and 2; levels 2-20: +Vitality HP, +1, +2, and +1 magic item at levels 5, 10
and 15). User ruling 2026-11-28.
*/
