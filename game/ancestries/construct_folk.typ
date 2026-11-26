#import "/global.typ": *

#let ability_data = (
    name: "Construct-folk",
    type: ("Ancestry",),
    blocks: (
      (kind: "passive", name: "Size", effect: [When you choose this ancestry, choose Small or Medium. You can't change it later.]),
      (kind: "narrative", name: "Appearance", effect: [A person built of metal, wood or stone, with gears and oil where others have bones and blood.]),
      (kind: "active", limitation: per_encounter(1), effect: [When you would gain a condition, you don't.]),
    ),
)

#let construct_folk = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.23-27 (Oozeling/Construct; only the Construct is kept). Book: Odd Constitution (Oozeling/Construct), your Hit Dice increase one step and always heal the maximum, magical healing always heals you the minimum.

house-rule: There are no Hit Dice: a bigger Hit Die that always heals its maximum becomes +2
Vitality.

house-rule: Instead of +2 Vitality (Dwarf-folk's), a mechanical mind: ignore a condition, once per turn,
KEY times per Rest. Spells heal you normally (identity pass, user ruling 2026-11-27).

house-rule: Uses: 1/encounter, as in the book, instead of KEY times per Rest and once per turn (user
ruling 2026-11-27). Later notes that say "KEY times per Rest" describe the older version.
*/
