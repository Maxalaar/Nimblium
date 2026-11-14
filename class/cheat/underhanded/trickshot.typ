// review: style=2026-11-14 changelog=2026-10-02
#import "../../../global.typ": *

#let ability_data = (
    name: "Trickshot",
    type: (
        "Ability",
        "Cheat",
        "Underhanded",
    ),
    blocks: (
      (
        kind: "passive",
        effect: [You can use Vicious Opportunist on thrown weapon attacks. You can't use Twist the Blade on them.],
      ),
      (
        kind: "active",
        cost: (actions(1),),
        effect: [When you throw a weapon, it also hits another creature within 2 spaces of the target, dealing half as much damage to it.],
      ),
    ),
)

#let trickshot = creat_ability(ability_data)
