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
        tags: ("AoE",),
        reach: 2,
        damage: [Die+#WIL radiant],
        effect: [Your #card_ref("Spirit Companion") sacrifices itself. It deals this damage to each enemy within Reach of it, ignoring #defense.],
      ),
    ),
)

#let vengeful_spirit = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Version of the 2026-10-02 changelog, simpler to play: a single burst
("(AoE Reach 2) Your Lifebinding Spirit sacrifices itself to deal its Harm damage to all
enemies within Reach") instead of the book's vortex. Applied on 2026-11-21, by exception to
the companion house rule of class/shepherd/mod.typ.

house-rule: The damage is the house Spirit Companion's Ethereal Strike (Die+WIL radiant,
ignoring Defense), not the changelog's Harm (1d8+STR). Reach is counted from the companion.
*/
