#import "/global.typ": *

#let ability_data = (
    name: "Companion Strike",
    type: (
        "Ability",
        "Shepherd",
        "Sacred Grace",
    ),
    blocks: (
      (
        kind: "passive",
        limitation: per_round(1),
        effect: [When you make a melee attack, if your #card_ref("Spirit Companion") is within 6 spaces of the target, it also attacks that target for free, even if it isn't adjacent to it.],
      ),
    ),
)

#let companion_strike = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: Adapted to the house-rule Spirit Companion: it attacks the target itself from
within 6 spaces, instead of adding its damage to your attack.

house-rule: The 2026-10-02 changelog version of this card is not applied. See the companion
house rule in game/class/shepherd/mod.typ.

interpretation: Renamed from "Assist Me, My Friend!" (user ruling 2026-11-28): card names are sober and
say what the card does, never a line a character would say.
*/
