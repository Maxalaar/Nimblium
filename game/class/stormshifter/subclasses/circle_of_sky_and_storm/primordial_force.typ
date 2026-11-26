#import "/global.typ": *

#let ability_data = (
    name: "Primordial Force",
    type: ("Ability", "Stormshifter", "Sky & Storm"),
    blocks: (
      (kind: "passive", limitation: per_round(1), effect: [When you cast a tiered Ice spell, you gain #WIL temp #HP.

      When you cast a tiered Lightning spell, it deals #WIL more damage.

      When you cast a tiered Radiant spell, you may heal a creature within 6 spaces for #WIL #HP.

      When you cast a tiered Wind spell, you can fly this turn, and move up to 6 spaces for free.]),
    ),
)

#let primordial_force = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: 1/round, on any tiered spell (was: spells you spend 2 or more mana on).
*/
