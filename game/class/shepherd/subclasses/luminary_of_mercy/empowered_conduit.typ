#import "/global.typ": *

#let ability_data = (
    name: "Empowered Conduit",
    type: (
        "Ability",
        "Shepherd",
        "Luminary of Mercy",
    ),
    blocks: (
      (
        kind: "passive",
        effect: [When you roll Initiative, regain 1 use of #card_ref("Searing Light"). This use is lost at the end of combat if you haven't spent it.],
      ),
    ),
)

#let empowered_conduit = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: Its other half (Conduit of Light targets 1 more creature) is a Levels line on
Conduit of Light.

house-rule: The 2026-10-02 changelog version of this card is not applied. See the companion
house rule in game/class/shepherd/mod.typ.
*/
