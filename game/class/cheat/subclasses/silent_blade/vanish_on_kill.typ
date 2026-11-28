#import "/global.typ": *

#let ability_data = (
    name: "Vanish on Kill",
    type: (
        "Ability",
        "Cheat",
        "Silent Blade",
    ),
    blocks: (
      (
        kind: "passive",
        effect: [When a creature dies from your #card_ref("Sneak Attack"), you may become #kw_invisible until you attack again or until the start of your next turn.],
      ),
    ),
    reminder: (conditions.invisible,),
)

#let vanish_on_kill = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: Renamed from "Amidst All This Commotion…" (user ruling 2026-11-28): card names are sober and
say what the card does, never a line a character would say.
*/
