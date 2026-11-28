#import "/global.typ": *

#let mechanic_data = (
    name: "Burst of Speed",
    type: ("Mechanic", "Zephyr"),
    description: [
      When combat starts, you gain #DEX Burst of Speed charges (BoS charges).

      Those you haven't spent are lost when combat ends.
    ],
    levels: [
      *Level 3:* Whenever you gain a Wound, gain 1 BoS charge.\
      *Level 20:* When combat starts, gain 1 more BoS charge.
    ],
)

#let burst_of_speed = creat_mechanic(mechanic_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.67 (Burst of Speed: DEX Bursts when you roll Initiative, for that encounter)
and the 2026-10-02 changelog (Reactive Force, the old Kinetic Momentum, at level 3; Windborne's
extra Burst at level 20).

interpretation: Bursts of Speed are charges: this Mechanic says how you gain and lose them;
the Maneuvers show their cost on a capsule.
*/
