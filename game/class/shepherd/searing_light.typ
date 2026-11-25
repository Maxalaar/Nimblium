#import "/global.typ": *

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
        effect: [Heal a #kw_dying creature within 6 spaces for #times(WIL, "d8") #HP, or deal #times(WIL, "d8") radiant damage to an undead or #kw_bloodied enemy within 6 spaces.],
      ),
    ),
    reminder: (conditions.dying, conditions.bloodied,),
)

#let searing_light = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: The 2026-10-02 changelog version of this card is not applied. See the companion
house rule in game/class/shepherd/mod.typ.
*/
