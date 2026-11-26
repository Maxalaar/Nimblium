#import "/global.typ": *

#let ability_data = (
    name: "Torment",
    type: ("Ability", "Oathsworn", "Oathbreaker"),
    blocks: (
      (kind: "passive", effect: [#card_ref("Lay on Hands") heals you twice as much, and others half as much.]),
      (kind: "passive", effect: [When you deal damage, you may spend healing power from #card_ref("Lay on Hands"). The damage increases by the amount spent, ignoring #defense.]),
    ),
)

#let torment = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.74 (level 7).
*/
