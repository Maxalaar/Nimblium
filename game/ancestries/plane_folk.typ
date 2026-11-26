#import "/global.typ": *

#let ability_data = (
    name: "Plane-folk",
    type: ("Ancestry",),
    blocks: (
      (kind: "passive", name: "Size", effect: [You are Medium.]),
      (kind: "narrative", name: "Appearance", effect: [A humanoid from another plane, with a slightly blurred outline, as if not quite here.]),
      (kind: "active", effect: [When you Defend, you may gain 1 Wound to ignore every effect of that attack.]),
      (kind: "passive", effect: [You can have 2 fewer Wounds before you die.]),
    ),
)

#let plane_folk = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.23-27 (Planarbeing). Book: Planeshift, when you Defend you can gain 1 Wound to phase out and ignore the attack (changelog: all its effects), −2 max Wounds.
*/
