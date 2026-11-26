#import "/global.typ": *

#let ability_data = (
    name: "Turtle-folk",
    type: ("Ancestry",),
    blocks: (
      (kind: "passive", name: "Size", effect: [When you choose this ancestry, choose Small or Medium. You can't change it later.]),
      (kind: "narrative", name: "Appearance", effect: [A humanoid turtle with a thick shell on its back, or its rocky kin, made of stone.]),
      (kind: "passive", effect: [Your #defense increases by 2.]),
      (kind: "passive", effect: [Your #speed decreases by 1.]),
    ),
)

#let turtle_folk = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.23-27 (Turtlefolk). Book: Slow & Steady (Turtlefolk/Stonefolk), +4 Armor, −2 Speed.

house-rule: +2 Defense and −1 speed instead of +4 Defense and −2 speed (balance pass, user ruling 2026-11-27).
*/
