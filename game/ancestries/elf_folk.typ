#import "/global.typ": *

#let ability_data = (
    name: "Elf-folk",
    type: ("Ancestry",),
    blocks: (
      (kind: "passive", name: "Size", effect: [You are Medium.]),
      (kind: "narrative", name: "Appearance", effect: [Tall and slender, with pointed ears, sharp features and light, quick movements.]),
      (kind: "passive", effect: [You have #kw_advantage on Initiative.]),
      (kind: "passive", effect: [Your #speed increases by 1.]),
      (kind: "active", limitation: (per_turn(1), per_safe_rest(KEY)), effect: [When you attack, the attack has #kw_advantage.]),
    ),
    reminder: (keywords.advantage,),
)

#let elf_folk = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.23-27 (Elf). Book: Lithe, advantage on Initiative, +1 Speed.

house-rule: Advantage on an attack, once per turn, KEY times per Rest (balance pass, user ruling 2026-11-27).
*/
