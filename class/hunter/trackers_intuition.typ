#import "../../global.typ": *

#let ability_data = (
    name: "Tracker's Intuition",
    type: (
        "Ability",
        "Hunter",
    ),
    blocks: (
      (kind: "narrative", effect: [You can discern the events of a past encounter by studying tracks and other subtle environmental clues, accurately determining the kind and amount of creatures, their direction, key actions, and passage of time.]),
    ),
)

#let trackers_intuition = creat_ability(ability_data)
