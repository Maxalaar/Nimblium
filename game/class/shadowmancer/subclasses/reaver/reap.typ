#import "/global.typ": *

#let ability_data = (
    name: "Reap",
    type: ("Ability", "Shadowmancer", "Reaver"),
    blocks: (
      (kind: "passive", effect: [When your #card_ref("Bonescythe") crits or kills a creature, summon 1 #card_ref("Shadow") for free. It doesn't count toward your #card_ref("Shadow", "Shadows") limit.]),
    ),
)

#let reap = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.78 (level 7) and the 2026-10-02 changelog (Reap ignores your Shadow Limit).
*/
