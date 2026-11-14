#import "../terms.typ": *

// Blocks shared by several creatures (creature_rules.txt).

#let passive_abilities = (
  undying: (
    kind: "passive",
    limitation: per_encounter(1),
    name: "Undying",
    effect: [When this creature would die, it resets to 1 #HP instead.],
  ),
  // Minions have no HP and no level (creature_rules.txt §5).
  minion: (
    kind: "passive",
    name: "Minion",
    effect: [Any damage kills this creature. Its attacks can't crit and ignore advantage and disadvantage. When several minions attack the same creature, their damage counts as a single attack.],
  ),
)
