#import "/global.typ": *

#let ability_data = (
    name: "Veilwalker's Blessing",
    type: (
        "Ability",
        "Shepherd",
        "Luminary of Malice",
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(1),),
        limitation: per_safe_rest(1),
        effect: [When you would drop to 0 #HP, drop to 1 #HP instead. An enemy within 6 spaces must make a #STR save. On a failure, it becomes #kw_bloodied, or drops to 0 #HP if it is already #kw_bloodied.],
      ),
    ),
    reminder: (conditions.bloodied,),
)

#let veilwalkers_blessing = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: The 2026-10-02 changelog version of this card is not applied. See the companion
house rule in game/class/shepherd/mod.typ.
*/
