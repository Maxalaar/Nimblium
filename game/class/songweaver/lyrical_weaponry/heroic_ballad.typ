#import "/global.typ": *

#let ability_data = (
    name: "Heroic Ballad",
    type: ("Ability", "Songweaver", "Lyrical Weaponry"),
    blocks: (
      (kind: "passive", effect: [You have 2 more #card_ref("Inspiration") charges.]),
      (kind: "passive", effect: [When you use #card_ref("Songweaver's Inspiration") on an ally's attack, that attack deals #WIL more damage.]),
    ),
)

#let heroic_ballad = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
