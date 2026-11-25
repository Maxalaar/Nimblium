#import "/global.typ": *

#let ability_data = (
    name: "Echo Casting",
    type: (
        "Ability",
        "Mage",
        "Spellshaper",
    ),
    blocks: (
      (
        kind: "active",
        cost: ([#times(2, "spell mana")],),
        effect: [When you cast a tiered spell that targets a single creature, cast a copy of it on a second target for free.],
      ),
    ),
)

#let echo_casting = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: The book's cost is 2×mana, min. 1 mana. Read as twice the mana cost of the
spell, paid on top of it. The minimum never matters, since a tiered spell costs at least 1
mana.
*/
