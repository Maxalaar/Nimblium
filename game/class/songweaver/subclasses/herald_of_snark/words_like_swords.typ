#import "/global.typ": *

#let ability_data = (
    name: "Words Like Swords",
    type: ("Ability", "Songweaver", "Herald of Snark"),
    blocks: (
      (kind: "passive", effect: [#card_ref("Vicious Mockery") deals 1d12+#INT damage instead of 1d6+#INT.]),
    ),
)

#let words_like_swords = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: The damage die becomes 1d12 (was: 1d6+INT+WIL).
*/
