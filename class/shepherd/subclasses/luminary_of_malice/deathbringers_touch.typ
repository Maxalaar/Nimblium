#import "../../../../global.typ": *

#let ability_data = (
    name: "Deathbringer's Touch",
    type: (
        "Ability",
        "Shepherd",
        "Luminary of Malice",
    ),
    blocks: (
      (
        kind: "passive",
        limitation: per_round(1),
        effect: [When you make a melee attack against a #kw_bloodied creature, the attack is a crit.],
      ),
      (kind: "passive", effect: [Your #card_ref("Spirit Companion")'s attacks deal #STR additional damage.]),
    ),
    reminder: (conditions.bloodied,),
)

#let deathbringers_touch = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: The 2026-10-02 changelog version of this card is not applied. See the companion
house rule in class/shepherd/mod.typ.
*/
