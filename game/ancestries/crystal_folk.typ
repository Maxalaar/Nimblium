#import "/global.typ": *

#let ability_data = (
    name: "Crystal-folk",
    type: ("Ancestry",),
    blocks: (
      (kind: "passive", name: "Size", effect: [You are Medium.]),
      (kind: "narrative", name: "Appearance", effect: [A humanoid made of living crystal, whose translucent body breaks light into colors.]),
      (kind: "active", limitation: (per_turn(1), per_safe_rest(KEY)), effect: [When you Defend, add #KEY to your #defense against that attack, and the attacker takes #KEY damage, ignoring #defense.]),
    ),
)

#let crystal_folk = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.23-27 (Crystalborn). Book: Reflective Aura, when you Defend gain KEY armor and deal KEY damage back to the attacker, 1/encounter; the changelog makes the damage ignore armor.

house-rule: KEY times per Rest, once per turn (book: 1/encounter).
*/
