#import "../../global.typ": *

#let ability_data = (
    name: "Searing Light",
    type: (
        "Ability",
        "Shepherd",
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(1),),
        limitation: per_safe_rest(WIL),
        effect: [
            Heal #times(WIL, "d8") #HP to a #kw_dying creature within Reach 6.\
            Or inflict #times(WIL, "d8") radiant damage to an undead or #kw_bloodied enemy within Reach 6.
          ],
      ),
    ),
    reminder: (conditions.dying, conditions.bloodied),
)

#let searing_light = creat_ability(ability_data)
