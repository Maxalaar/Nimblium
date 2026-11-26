#import "/global.typ": *

#let ability_data = (
    name: "Aura of Refuge",
    type: ("Ability", "Oathsworn", "Oath of Refuge"),
    blocks: (
      (kind: "passive", effect: [Your shields gain +#WIL #defense. A shield you hold counts as a free hand when you cast a spell.]),
      (kind: "passive", effect: [You have an #kw_aura with a Reach of 4. You can #kw_interpose for an ally anywhere within your #kw_aura.]),
    ),
    reminder: (keywords.aura, keywords.interpose,),
)

#let aura_of_refuge = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: There is no spellcasting focus: a held shield counts as a free hand for casting
(book: shields count as your spellcasting focus).
*/
