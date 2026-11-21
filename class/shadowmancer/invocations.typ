#import "../../global.typ": *

#let mechanic_data = (
    name: "Invocations",
    type: ("Mechanic", "Shadowmancer"),
    description: [
      *Level 3:* Choose 1 Lesser Invocation.\
      *Level 4:* Choose 1 Greater Invocation.\
      *Level 6:* Choose 1 more Greater Invocation.\
      *Level 8:* Choose 1 more Lesser Invocation.\
      *Level 9:* Choose 1 more Greater Invocation.\
      *Level 11:* Choose 1 more Lesser Invocation.\
      *Level 14:* Choose 1 more Greater Invocation.\
      *Level 18:* Choose 1 more Greater Invocation.

      When you commune with your Patron during a #safe_rest, you may beg it to let you change your Shadowmancer choices. It may ask for something in return.
    ],
)

#let invocations = creat_mechanic(mechanic_data)

/*
review: style=2026-11-14 changelog=2026-10-02

The last paragraph is the book's Supplicate.
*/
