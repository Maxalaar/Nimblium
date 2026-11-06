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
        cost: ("1 TotH charge",),
        effect: [Target a creature that moves adjacent to you or an ally within 6 spaces. Move them back 1 space. They are #keyword_style[Restrained] until they can escape DC 10+WIL.],
      ),
    ),
    reminder: (conditions.restrained,),
)

#let snare_trap = creat_ability(ability_data)


