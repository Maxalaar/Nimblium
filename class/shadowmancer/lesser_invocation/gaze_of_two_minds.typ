#import "../../../global.typ": *

#let ability_data = (
    name: "Gaze of Two Minds",
    type: ("Ability", "Shadowmancer", "Lesser Invocation"),
    blocks: (
      (kind: "narrative", effect: [Touch a willing creature. While you keep your Concentration, you perceive through its senses instead of your own.]),
    ),
)

#let gaze_of_two_minds = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
