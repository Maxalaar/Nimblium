#import "/global.typ": *

#let ability_data = (
    name: "Opportunistic Snark",
    type: ("Ability", "Songweaver", "Herald of Snark"),
    blocks: (
      (kind: "active", limitation: per_round(1), effect: [When an enemy within 12 spaces makes an attack that deals 0 damage, you may cast #card_ref("Vicious Mockery") on it for free. It can't miss, and it deals double damage.]),
    ),
)

#let opportunistic_snark = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Triggers when an enemy's attack deals 0 damage, including when you or an ally Defends
it down to nothing (was: when it misses). The cast can't miss.

interpretation: The book's "Reaction" with no cost becomes a free ability with a "When..."
trigger, limited to once per round like every reaction.
*/
