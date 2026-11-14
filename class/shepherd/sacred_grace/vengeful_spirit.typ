#import "../../../global.typ": *

#let ability_data = (
    name: "Vengeful Spirit",
    type: (
        "Ability",
        "Shepherd",
        "Sacred Grace",
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(1),),
        effect: [Your Spirit Companion becomes a vortex of radiant light. At the end of each of your turns, it loses 10 #HP and deals its Die+#WIL radiant damage to each enemy within 3 spaces of it, ignoring #defense and Cover. Until it drops to 0 #HP, it can't do anything but move.],
      ),
    ),
)

#let vengeful_spirit = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: The vortex lasts until the Spirit Companion's HP pool runs out, 10 HP per turn,
instead of 1 round per healing charge left.

house-rule: The 2026-10-02 changelog version of this card is not applied. See the companion
house rule in class/shepherd/mod.typ.
*/
