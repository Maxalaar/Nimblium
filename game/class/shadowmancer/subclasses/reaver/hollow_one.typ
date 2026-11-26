#import "/global.typ": *

#let ability_data = (
    name: "Hollow One",
    type: ("Ability", "Shadowmancer", "Reaver"),
    blocks: (
      (kind: "lost", effect: [You lose #card_ref("Shadow Blast"), and #card_ref("Pilfered Power") no longer casts your tiered spells. You can't use them anymore.]),
      (kind: "active", cost: (actions(1),), effect: [Summon your #card_ref("Bonescythe") in your hands.]),
      (kind: "passive", effect: [Invocations that affect #card_ref("Shadow Blast") affect your #card_ref("Bonescythe") instead.]),
    ),
)

#let hollow_one = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.78 (Reaver, Hollow One). The Reaver was an Extra Subclass of the Heroes
book; the changelog moves it into the Shadowmancer: here, a subclass like the others.
*/
