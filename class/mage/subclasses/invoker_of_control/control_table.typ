#import "../../../../global.typ": *

#let mechanic_data = (
    name: "Control Table",
    type: (
        "Mechanic",
        "Mage",
        "Invoker of Control",
    ),
    description: [
      *I Insist:* Cast a cantrip for free. It ignores all disadvantage and can't miss.\
      \
      *Elemental Affliction:* A creature of your choice within 12 spaces becomes #kw_charged, #kw_smoldering or #kw_slowed.\
      \
      *No:* Choose a creature. During its next turn, it can't harm a creature of your choice.\
      \
      *Lose Control:* Resolve each of the options above. The GM makes every choice.
    ],
    reminder: (mage_keywords.demand_control, conditions.charged, conditions.smoldering, conditions.slowed),
)

#let control_table = creat_mechanic(mechanic_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
