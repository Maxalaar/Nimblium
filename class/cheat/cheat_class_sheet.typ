#import "../../global.typ": *
#import "../../card_structure/class_sheet.typ": class_sheet, minor, by_level

#let stat_up(body) = minor[#body]
#let n = none

#class_sheet(
  name: "Cheat",
  icon: "cheat.svg",
  intro: [Cloak and dagger… and dagger.],
  info: (
    ("Key stats", [#DEX, #INT]),
    ("Hit die", [1d6]),
    ("Starting HP", [10]),
    ("Saves", [#DEX\+, #WIL\−]),
    ("Armor", [Leather]),
    ("Weapons", [#DEX weapons]),
  ),
  levels: (
    (n, [#card_ref("Sneak Attack"). #card_ref("Vicious Opportunist").]),
    (n, [#card_ref("Cheat").]),
    (n, [Subclass: Tools of the Scoundrel or Tools of the Silent Blade. #card_ref("Sneak Attack") becomes 1d8. #card_ref("Thieves' Cant").]),
    (n, [Underhanded Abilities: choose 1. #stat_up[+1 #DEX or #INT.]]),
    (n, [#card_ref("Twist the Blade"). #card_ref("Quick Read"). #stat_up[+1 #WIL or #STR.]]),
    (n, [Choose 1 more Underhanded Ability. #card_ref("THAT'S Not What Happened!").]),
    (n, [Subclass feature. #card_ref("Sneak Attack") becomes 2d8.]),
    (n, [Choose 1 more Underhanded Ability. #stat_up[+1 #DEX or #INT.]]),
    (n, [#card_ref("Sneak Attack") becomes 2d10. #stat_up[+1 #WIL or #STR.]]),
    (n, [Choose 1 more Underhanded Ability.]),
    (n, [Subclass feature. #card_ref("Sneak Attack") becomes 2d12.]),
    (n, [Choose 1 more Underhanded Ability. #stat_up[+1 #DEX or #INT.]]),
    (n, [#card_ref("Twist the Blade") once per turn for free. #stat_up[+1 #WIL or #STR.]]),
    (n, [Choose 1 more Underhanded Ability.]),
    (n, [Subclass feature. #card_ref("Sneak Attack") becomes 2d20.]),
    (n, [Choose 1 more Underhanded Ability. #stat_up[+1 #DEX or #INT.]]),
    (n, [#card_ref("Sneak Attack") becomes 3d20. #stat_up[+1 #WIL or #STR.]]),
    (n, [Choose 1 more Underhanded Ability.]),
    (n, [Epic Boon.]),
    (n, [#card_ref("Supreme Execution"). #stat_up[+1 to any 2 stats.]]),
  ),
  boxes: (
    ([Tools of the Scoundrel], by_level(
      (3, [#card_ref("Low Blow"), #card_ref("Sweet Talk").]),
      (7, card_ref("Pocket Sand")),
      (11, card_ref("Escape Plan")),
      (15, card_ref("Heads I Win, Tails You Lose")),
    )),
    ([Tools of the Silent Blade], by_level(
      (3, [#card_ref("Amidst All This Commotion…"), #card_ref("Leave No Trace").]),
      (7, card_ref("Cunning Strike")),
      (11, card_ref("Professional Skulker")),
      (15, card_ref("KILL")),
    )),
    ([Underhanded Abilities], [
      #card_ref("Creative Accounting")\
      #card_ref("Exploit Weakness")\
      #card_ref("Feinting Attack")\
      #card_ref("How'd YOU get here?!")\
      #card_ref("I'm Outta Here!")\
      #card_ref("Misdirection")\
      #card_ref("Steal Tempo")\
      #card_ref("Sunder Armor Medium")\
      #card_ref("Sunder Armor Heavy")\
      #card_ref("Tangling Wire")\
      #card_ref("The Setup")\
      #card_ref("Trickshot")
    ]),
  ),
)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.13-17 and the 2026-10-02 changelog (Tangling Wire and The Setup are new).
Trade Secrets (change your choices on a Safe Rest) is not used: global house rule in
nimblium_documents/README.txt.
*/
