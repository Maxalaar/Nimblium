#import "/global.typ": *

#let mechanic_data = (
    name: "Pilfered Power",
    type: ("Mechanic", "Shadowmancer"),
    description: [
      You cast tiered spells by stealing power from your Patron, without mana. You always cast them at the highest tier you can.

      You can do this #DEX times per #safe_rest. Each time beyond that, your Patron deals you damage equal to half your max #HP.
    ],
    high_Levels: [
      *Level 2:* You cast spells at tier 1.\
      *Level 5:* You cast spells at tier 2.\
      *Level 7:* You cast spells at tier 3.\
      *Level 10:* You cast spells at tier 4.\
      *Level 13:* You cast spells at tier 5.\
      *Level 16:* You cast spells at tier 6.\
      *Level 19:* You cast spells at tier 7.
    ],
)

#let pilfered_power = creat_mechanic(mechanic_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: The book resets the limit "when you commune with your patron during a Safe
Rest". Written as DEX times per Safe Rest.
*/
