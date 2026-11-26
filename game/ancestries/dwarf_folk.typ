#import "/global.typ": *

#let ability_data = (
    name: "Dwarf-folk",
    type: ("Ancestry",),
    blocks: (
      (kind: "passive", name: "Size", effect: [You are Medium.]),
      (kind: "narrative", name: "Appearance", effect: [Short and broad, with thick bones, a heavy beard or braids, and a body built like stone.]),
      (kind: "passive", effect: [Your Vitality increases by 2.]),
      (kind: "passive", effect: [You can have 1 more Wound before you die.]),
      (kind: "passive", effect: [Your #speed decreases by 1.]),
    ),
)

#let dwarf_folk = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.23-27 (Dwarf). Book: Stout, +2 max Hit Dice, +1 max Wounds, −1 Speed.

house-rule: There are no Hit Dice: +2 max Hit Dice becomes +1 Vitality.

house-rule: +2 Vitality (user ruling 2026-11-26). The −1 speed stays (user ruling 2026-11-27).
*/
