#import "../../../global.typ": *

#let ability_data = (
    name: "Snare Trap",
    type: (
        "Ability",
        "Hunter",
        "Thrill of the hunt"
    ),
    blocks: (
      (
        kind: "active",
        cost: ("1 Action", "1 TotH charge"),
        limitation: "1/encounter",
        effect: [When a creature moves adjacent to you or to an ally within 6 spaces, move it back 1 space. It is #keyword_style[Restrained] until it escapes with a DC 10+WIL check.],
      ),
    ),
    reminder: (conditions.restrained,),
)

#let snare_trap = creat_ability(ability_data)


