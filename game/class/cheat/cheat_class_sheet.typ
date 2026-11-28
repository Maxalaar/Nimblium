#import "/global.typ": *
#import "/templates/class_sheet.typ": class_sheet, minor, by_level

#let n = none

#class_sheet(
  name: "Cheat",
  icon: "cheat.svg",
  intro: [Cloak and dagger… and dagger.],
  difficulty: 1,
  description: [A sneaky, dirty fighter who never plays fair. You wait for an opening, then strike where it hurts the most. You rely on cunning more than strength, picking your moment instead of trading blows, and a single well-placed strike can end a fight.],
  info: (
    ("Key stats", [#DEX, #INT]),
    ("Vitality", [4 + #STR]),
    ("Armor", [Cloth, leather]),
  ),
  levels: (
    (n, [#card_ref("Sneak Attack"). #card_ref("Vicious Opportunist").]),
    (n, [#card_ref("Cheat").]),
    (n, [Choose a subclass, Tools of the Scoundrel or Tools of the Silent Blade.]),
    (n, [Choose 1 Underhanded Ability.]),
    (n, [#card_ref("Twist the Blade"). #card_ref("Quick Read").]),
    (n, [Choose 1 more Underhanded Ability. #card_ref("THAT'S Not What Happened!").]),
    (n, [Subclass feature.]),
    (n, [Choose 1 more Underhanded Ability.]),
    (n, []),
    (n, [Choose 1 more Underhanded Ability.]),
    (n, [Subclass feature.]),
    (n, [Choose 1 more Underhanded Ability.]),
    (n, []),
    (n, [Choose 1 more Underhanded Ability.]),
    (n, [Subclass feature.]),
    (n, [Choose 1 more Underhanded Ability.]),
    (n, []),
    (n, [Choose 1 more Underhanded Ability.]),
    (n, [Epic Boon.]),
    (n, []),
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
guides/house_rules.txt.

house-rule: No stat increases at set levels: every row of the level table shows the HP, stat
points and skill points that level gives (5 stat and 10 skill points at level 1, then +1 and +2),
with no "All" row (user ruling 2026-11-28).
*/
