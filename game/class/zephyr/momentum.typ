#import "/global.typ": *

#let mechanic_data = (
    name: "Momentum",
    type: ("Mechanic", "Zephyr"),
    description: [
      On your turn, you gain 1 Momentum charge (Mom charge) for each space you enter for the first time this turn.

      You lose all your Mom charges when you take damage, and when combat ends.
    ],
    levels: [
      *Level 14:* When combat starts, you gain 10 Mom charges.
    ],
)

#let momentum = creat_mechanic(mechanic_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: the 2026-10-02 changelog (Momentum, level 1: "Gain 1 Momentum for every new space you
enter this turn. [...] All Momentum is lost if you take damage, or at the end of combat"; Blur,
level 14: "Gain 10 Momentum when you roll Initiative"). The class was rebuilt around Momentum:
Swift Fists (the old level 1), Reverberating Strikes and Ethereal Projection are gone.

interpretation: Momentum is charges: this Mechanic says how you gain and lose them; the
abilities that spend them show the cost on a capsule.
*/
