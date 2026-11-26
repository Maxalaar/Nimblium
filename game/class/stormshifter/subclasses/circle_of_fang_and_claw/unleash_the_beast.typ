#import "/global.typ": *

#let ability_data = (
    name: "Unleash the Beast",
    type: ("Ability", "Stormshifter", "Fang & Claw"),
    blocks: (
      (kind: "passive", effect: [Whenever #card_ref("Fearsome Beast")'s Gore hits, the target is #kw_taunted by you until the end of its next turn.]),
      (kind: "passive", effect: [#card_ref("Beast of the Pack")'s Frenzy deals 1d8+#LVL damage instead of 1d6+#LVL.]),
    ),
    reminder: (conditions.taunted,),
)

#let unleash_the_beast = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Level 3 (was 7), rebuilt (was: 1/encounter, when you miss you can crit instead).
*/
