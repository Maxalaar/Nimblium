#import "/global.typ": *

#let ability_data = (
    name: "Tracker's Intuition",
    type: (
        "Ability",
        "Hunter",
    ),
    blocks: (
      (
        kind: "narrative",
        effect: [By studying tracks and other subtle clues, you can discern the events of a past encounter. You learn the kind and number of creatures, their direction, their key actions and how much time has passed.],
      ),
    ),
)

#let trackers_intuition = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
