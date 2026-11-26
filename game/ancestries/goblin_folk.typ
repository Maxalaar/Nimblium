#import "/global.typ": *

#let ability_data = (
    name: "Goblin-folk",
    type: ("Ancestry",),
    blocks: (
      (kind: "passive", name: "Size", effect: [You are Small.]),
      (kind: "narrative", name: "Appearance", effect: [A small humanoid with green skin, long pointed ears, sharp teeth and quick, wary eyes.]),
      (kind: "active", limitation: (per_turn(1), per_safe_rest(KEY)), effect: [After you become the target of an attack, move up to 2 spaces for free, ignoring #kw_difficult_terrain.]),
    ),
    reminder: (keywords.difficult_terrain,),
)

#let goblin_folk = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.23-27 (Goblin). Book: Skedaddle, move 2 spaces for free after you become the target of an attack or negative effect, after damage, ignoring difficult terrain.

house-rule: An active ability, KEY times per Rest, once per turn.
*/
