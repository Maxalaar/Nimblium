#import "/global.typ": *
#import "/templates/class_sheet.typ": class_sheet, minor, by_level

#let stat_up(body) = minor[#body]
#let n = none

#class_sheet(
  name: "Berserker",
  icon: "berserker.svg",
  intro: [Wrath and ruin. The Berserker is destruction.],
  difficulty: 1,
  description: [Fury made flesh. The Berserker charges into the thick of the fight and stays there, trading blows up close while others keep their distance. The longer the battle rages, the more dangerous you become. It is a reckless way to fight, taking risks and pain to deal huge damage and trusting your toughness to carry you through.],
  info: (
    ("Key stats", [#STR, #DEX]),
    ("Hit die", [d12, +8 #HP per level]),
    ("Armor", [None]),
  ),
  levels: (
    (n, [#card_ref("Rage"), #card_ref("Fury Dice"), #card_ref("That all you got?!").]),
    (n, [#card_ref("Intensifying Fury"). #card_ref("One with the Ancients").]),
    (n, [Choose a subclass, Path of the Mountainheart or Path of the Red Mist. #card_ref("Bloodlust").]),
    (n, [#card_ref("Enduring Rage"). Choose 1 Savage Arsenal ability. #stat_up[+1 #STR or #DEX.]]),
    (n, [#stat_up[+1 #INT or #WIL.]]),
    (n, [Choose 1 more Savage Arsenal ability.]),
    (n, [Subclass feature.]),
    (n, [Choose 1 more Savage Arsenal ability. #stat_up[+1 #STR or #DEX.]]),
    (n, [#stat_up[+1 #INT or #WIL.]]),
    (n, [Choose 1 more Savage Arsenal ability.]),
    (n, [Subclass feature.]),
    (n, [Choose 1 more Savage Arsenal ability. #stat_up[+1 #STR or #DEX.]]),
    (n, [#stat_up[+1 #INT or #WIL.]]),
    (n, [Choose 1 more Savage Arsenal ability.]),
    (n, [Subclass feature.]),
    (n, [Choose 1 more Savage Arsenal ability. #stat_up[+1 #STR or #DEX.]]),
    (n, [#stat_up[+1 #INT or #WIL.]]),
    (n, [#card_ref("Deep Rage").]),
    (n, [Epic Boon.]),
    (n, [#stat_up[+1 to any 2 stats.]]),
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
*/
