#import "/global.typ": *

#let mechanic_data = (
    name: "Pilfered Power",
    type: ("Mechanic", "Shadowmancer"),
    description: [
      You cast tiered spells by stealing power from your Patron, without mana. You always cast them at the highest tier you can.

      You have #DEX Pilfered Power charges, which recharge on a #safe_rest. Each tiered spell you cast spends 1. With no charge left, you can still cast, but your Patron deals you damage equal to half your max #HP.
    ],
    levels: [
      *Level 2:* You cast spells at tier 1.\
      *Level 5:* You cast spells at tier 2.\
      *Level 7:* You cast spells at tier 3.\
      *Level 10:* You cast spells at tier 4.\
      *Level 12:* When your Patron would damage you, make a #STR check. On 9 or less, you take the damage. On 10 to 19, you take only 10 damage. On 20 or more, you take no damage and cast the spell 1 tier higher.\
      *Level 13:* You cast spells at tier 5.\
      *Level 16:* You cast spells at tier 6.\
      *Level 19:* You cast spells at tier 7.
    ],
)

#let pilfered_power = creat_mechanic(mechanic_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: Greedy Pact (level 12) is a Levels line.

interpretation: The book resets the limit "when you commune with your patron during a Safe
Rest". Written as DEX times per Safe Rest.
*/
