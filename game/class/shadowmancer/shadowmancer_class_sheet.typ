#import "/global.typ": *
#import "/templates/class_sheet.typ": class_sheet, minor, by_level

#let stat_up(body) = minor[#body]
#let n = none

#class_sheet(
  name: "Shadowmancer",
  icon: "shadowmancer.svg",
  intro: [Totally NOT evil. Why would you even say that?],
  info: (
    ("Key stats", [#INT, #DEX]),
    ("Hit die", [d8, +5 #HP per level]),
    ("Armor", [Cloth]),
  ),
  levels: (
    (n, [#card_ref("Shadow Blast"), #card_ref("Summon Shadow"), #card_ref("Command Shadows") and the #card_ref("Shadow").]),
    (1, [#card_ref("Pilfered Power"). Necrotic cantrips and tier 1 spells.]),
    (1, [Choose a subclass, Pact of the Red Dragon or Pact of the Abyssal Depths. Choose 1 Lesser Invocation.]),
    (1, [Choose 1 Greater Invocation. #stat_up[+1 #INT or #DEX.]]),
    (2, [Upgraded cantrips. #stat_up[+1 #STR or #WIL.]]),
    (2, [Choose 1 more Greater Invocation. 1 Necrotic Utility Spell.]),
    (3, [Subclass feature.]),
    (3, [Choose 1 more Lesser Invocation. 1 more Necrotic Utility Spell. #stat_up[+1 #INT or #DEX.]]),
    (3, [Choose 1 more Greater Invocation. #stat_up[+1 #STR or #WIL.]]),
    (4, [Upgraded cantrips.]),
    (4, [Subclass feature. Choose 1 more Lesser Invocation.]),
    (4, [#card_ref("Greedy Pact"). #stat_up[+1 #INT or #DEX.]]),
    (5, [#stat_up[+1 #STR or #WIL.]]),
    (5, [Choose 1 more Greater Invocation. All Necrotic Utility Spells.]),
    (5, [Subclass feature. Upgraded cantrips.]),
    (6, [#stat_up[+1 #INT or #DEX.]]),
    (6, [#card_ref("Dire Shadows"). #stat_up[+1 #STR or #WIL.]]),
    (6, [Choose 1 more Greater Invocation.]),
    (7, [Epic Boon.]),
    (7, [#card_ref("Eldritch Usurper") and the #card_ref("Greater Shadow"). Upgraded cantrips. #stat_up[+1 to any 2 stats.]]),
  ),
  boxes: (
    ([Pact of the Red Dragon], by_level(
      (3, [#card_ref("Draconic Crimson Rite"). Fire spells.]),
      (7, [#card_ref("We'll ALL Burn!"). 1 Fire Utility Spell.]),
      (11, card_ref("Heart of Burning Fire")),
      (15, card_ref("Enveloped by the Master")),
    )),
    ([Pact of the Abyssal Depths], by_level(
      (3, [#card_ref("Master of Nightfrost"). Ice spells.]),
      (7, [#card_ref("Shadowfrost"). 1 Ice Utility Spell.]),
      (11, card_ref("Glacial Resilience")),
      (15, card_ref("Cryomancer's Reprisal")),
    )),
    ([Invocations], [
      #text(size: 7.5pt, weight: "bold")[LESSER]\
      #card_ref("Abhorrent Speech"), #card_ref("Beguiling Influence"), #card_ref("Blood Sight"), #card_ref("Devoted Acolyte"), #card_ref("Eldritch Sense"), #card_ref("Gaze of Two Minds"), #card_ref("Knowledge from Beyond"), #card_ref("My Favored Pet"), #card_ref("Voice of the Dark"), #card_ref("Whispers of the Grave").

      #text(size: 7.5pt, weight: "bold")[GREATER]\
      #card_ref("Armor of Shadows"), #card_ref("Fiendish Boon"), #card_ref("Hungering Shadows"), #card_ref("One with Shadows"), #card_ref("Repelling Blast"), #card_ref("Shadow Magus"), #card_ref("Shadow Rush"), #card_ref("Shadow Spear"), #card_ref("Shadow Warp"), #card_ref("Swarming Shadows").
    ]),
  ),
)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.43-47 and the 2026-10-02 changelog (Eldritch Usurper summons a Greater
Shadow, Vengeful Blast removed). The Tier column is the tier every spell is cast at
(Pilfered Power). Supplicate (change your choices on a Safe Rest) is not used: global house
rule in guides/house_rules.txt.
*/
