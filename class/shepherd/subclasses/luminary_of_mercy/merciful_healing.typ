#import "../../../../global.typ": *

#let ability_data = (
    name: "Merciful Healing",
    type: (
        "Ability",
        "Shepherd",
        "Luminary of Mercy",
    ),
    blocks: (
      (kind: "passive", effect: [When an effect you cause heals a #kw_dying creature, it heals twice as much.]),
      (
        kind: "passive",
        limitation: per_round(1),
        effect: [While you are #kw_dying, your #card_ref("Spirit Companion") can use one of its abilities for free.],
      ),
    ),
    reminder: (conditions.dying,),
)

#let merciful_healing = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: The 2026-10-02 changelog version of this card is not applied. See the companion
house rule in class/shepherd/mod.typ.
*/
