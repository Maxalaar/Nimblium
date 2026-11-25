#import "/global.typ": *

#let ability_data = (
    name: "Whispers of the Grave",
    type: ("Ability", "Shadowmancer", "Lesser Invocation"),
    blocks: (
      (kind: "narrative", limitation: per_safe_rest(1), effect: [Ask a dead creature 3 yes-or-no questions. It can never be questioned this way again.]),
    ),
)

#let whispers_of_the_grave = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: 1/Safe Rest (was 1/day).
*/
