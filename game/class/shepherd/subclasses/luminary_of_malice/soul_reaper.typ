#import "/global.typ": *

#let ability_data = (
    name: "Soul Reaper",
    type: (
        "Ability",
        "Shepherd",
        "Luminary of Malice",
    ),
    blocks: (
      (
        kind: "passive",
        effect: [When you use #card_ref("Searing Light") to deal damage to an enemy, another enemy within 6 spaces of you takes the same damage, ignoring #defense.],
      ),
    ),
)

#let soul_reaper = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: The 2026-10-02 changelog version of this card is not applied. See the companion
house rule in game/class/shepherd/mod.typ.
*/
