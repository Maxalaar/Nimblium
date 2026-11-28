#import "/global.typ": *

#let ability_data = (
    name: "Arcane Command",
    type: ("Ability", "Commander", "Spellblade"),
    blocks: (
      (kind: "lost", effect: [You lose #card_ref("Weapon Mastery") and your Combat Tactics. You can't use them anymore.]),
      (kind: "passive", effect: [Whenever you could choose a Combat Tactic or a mastery, choose instead another Commander's Order, or a spell of tier 1 or lower from any school.]),
      (kind: "passive", effect: [When combat starts, gain #INT mana. You lose it when combat ends.]),
    ),
)

#let arcane_command = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.76 (Spellblade, Arcane Command). The Spellblade was an Extra Subclass of
the Heroes book; the changelog moves it into the Commander: here, a subclass like the others.
*/
