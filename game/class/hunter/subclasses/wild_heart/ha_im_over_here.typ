#import "/global.typ": *

#let ability_data = (
    name: "Ha! I'm Over Here!",
    type: (
        "Ability",
        "Hunter",
        "Wild Heart",
    ),
    blocks: (
      (
        kind: "passive",
        limitation: per_safe_rest(1),
        effect: [When an attack would drop you to 0 #HP, you take no damage and move up to your #speed away.],
      ),
    ),
)

#let ha_im_over_here = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
