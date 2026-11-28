#import "/global.typ": *

#let ability_data = (
    name: "Revive the Fallen",
    type: (
        "Ability",
        "Shepherd",
        "Sacred Grace",
    ),
    blocks: (
      (
        kind: "passive",
        effect: [Your healing can target creatures that have been dead for less than 1 round. For every 10 #HP a dead creature is healed this way, you may have it recover 1 Wound instead. You must heal at least 1 Wound to revive it.],
      ),
    ),
)

#let revive_the_fallen = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: Renamed from "Not Beyond MY Reach" (user ruling 2026-11-28): card names are sober and
say what the card does, never a line a character would say.
*/
