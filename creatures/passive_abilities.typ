#import "../terms.typ": *

// Blocks shared by several creatures (creature_rules.md).
#let passive_abilities = (
  undying: (
    kind: "passive",
    limitation: per_encounter(1),
    name: "Undying",
    effect: [When this creature would die, it resets to 1 #HP instead.],
  ),
)
