#import "/global.typ": *

#let ability_data = (
    name: "Construct-folk",
    type: ("Ancestry",),
    blocks: (
      (kind: "passive", name: "Size", effect: [When you choose this ancestry, choose Small or Medium. You can't change it later.]),
      (kind: "narrative", name: "Appearance", effect: [A person built of metal, wood or stone, with gears and oil where others have bones and blood.]),
      (kind: "passive", effect: [Your Vitality increases by 2.]),
      (kind: "passive", effect: [Spells that heal you always heal their minimum.]),
    ),
)

#let construct_folk = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.23-27 (Oozeling/Construct; only the Construct is kept). Book: Odd Constitution (Oozeling/Construct), your Hit Dice increase one step and always heal the maximum, magical healing always heals you the minimum.

house-rule: There are no Hit Dice: a bigger Hit Die that always heals its maximum becomes +2
Vitality.
*/
