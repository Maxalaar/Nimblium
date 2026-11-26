#import "/global.typ": *

#let ability_data = (
    name: "Conduit of Light",
    type: (
        "Ability",
        "Shepherd",
        "Luminary of Mercy",
    ),
    blocks: (
      (
        kind: "active",
        cost: (searing_light_uses(1),),
        effect: [When an effect you cause heals #HP, heal another creature within 6 spaces of you for the same amount, or deal that much damage to it, ignoring #defense.],
      ),
    ),
    levels: [
      *Level 15:* It can target 1 more creature.
    ],
)

#let conduit_of_light = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: The first half of Empowered Conduit (level 15, same subclass) is its Levels
line.

house-rule: The 2026-10-02 changelog version of this card is not applied. See the companion
house rule in game/class/shepherd/mod.typ.
*/
