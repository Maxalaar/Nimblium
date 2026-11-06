#import "../../global.typ": *

#let ability_data = (
    name: "Supreme Execution",
    type: (
        "Ability",
        "Cheat",
    ),
    blocks: (
      (kind: "passive", effect: [When you attack with a blade, you do not require targets to be #kw_distracted to trigger Vicious Opportunist.]),
    ),
    reminder: (keywords.distracted,),
)

#let supreme_execution = creat_ability(ability_data)
