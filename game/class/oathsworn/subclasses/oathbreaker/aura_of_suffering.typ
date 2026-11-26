#import "/global.typ": *

#let ability_data = (
    name: "Aura of Suffering",
    type: ("Ability", "Oathsworn", "Oathbreaker"),
    blocks: (
      (kind: "passive", effect: [You have an #kw_aura with a Reach of 4.]),
      (kind: "passive", effect: [You can #kw_interpose for an ally anywhere within your #kw_aura.]),
      (kind: "passive", effect: [#card_ref("Radiant Judgment") no longer triggers when you are attacked. It triggers whenever you could #kw_interpose but don't.]),
    ),
    reminder: (keywords.aura, keywords.interpose),
)

#let aura_of_suffering = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.74 (Aura of Suffering).
*/
