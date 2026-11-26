#import "/global.typ": *

#let ability_data = (
    name: "Goblin-folk",
    type: ("Ancestry",),
    blocks: (
      (kind: "passive", name: "Size", effect: [You are Small.]),
      (kind: "narrative", name: "Appearance", effect: [A small humanoid with green skin, long pointed ears, sharp teeth and quick, wary eyes.]),
      (kind: "active", limitation: per_encounter(1), effect: [When you become the target of an attack, a willing ally adjacent to you may swap places with you. That ally becomes the target of the attack.]),
    ),
)

#let goblin_folk = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.23-27 (Goblin). Book: Skedaddle, move 2 spaces for free after you become the target of an attack or negative effect, after damage, ignoring difficult terrain.

house-rule: An active ability, KEY times per Rest, once per turn.

house-rule: Instead of Skedaddle (a free move, too close to Rabbit-folk), the goblin hides behind an ally (identity pass, user ruling 2026-11-27).

house-rule: Uses: 1/encounter, as in the book, instead of KEY times per Rest and once per turn (user
ruling 2026-11-27). Later notes that say "KEY times per Rest" describe the older version.
*/
