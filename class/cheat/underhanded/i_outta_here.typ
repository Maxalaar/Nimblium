#import "../../../global.typ": *

#let ability_data = (
    name: "I’m Outta Here!",
    type: (
        "Ability",
        "Cheat",
        "Underhanded",
    ),
    blocks: (
      (kind: "passive", effect: [When an ally within 4 spaces is crit, you may turn #keyword_style[Invisible] until the end of your next turn and then move up to half your speed.]),
    ),
    reminder: (conditions.invisible,),
)

#let i_outta_here = creat_ability(ability_data)