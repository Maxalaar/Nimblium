#import "../../../../global.typ": *

#let ability_data = (
    name: "Empowered Conduit",
    type: (
        "Ability",
        "Shepherd",
        "Luminary of Mercy",
    ),
    blocks: (
      (kind: "passive", effect: [Conduit of Light can target 1 additional creature.]),
      (
        kind: "passive",
        effect: [When you roll Initiative, regain 1 use of Searing Light. This use is lost at the end of combat if you haven't spent it.],
      ),
    ),
)

#let empowered_conduit = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: The 2026-10-02 changelog version of this card is not applied. See the companion
house rule in class/shepherd/mod.typ.
*/
