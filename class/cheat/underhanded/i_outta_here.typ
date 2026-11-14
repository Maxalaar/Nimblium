// review: style=2026-11-14 changelog=2026-10-02
#import "../../../global.typ": *

#let ability_data = (
    name: "I'm Outta Here!",
    type: (
        "Ability",
        "Cheat",
        "Underhanded",
    ),
    blocks: (
      (
        kind: "passive",
        effect: [When an ally within 4 spaces takes a critical hit, you may become #kw_invisible until the end of your next turn, then move up to half your #speed.],
      ),
    ),
    reminder: (conditions.invisible,),
)

#let i_outta_here = creat_ability(ability_data)
