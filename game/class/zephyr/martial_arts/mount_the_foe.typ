#import "/global.typ": *

#let ability_data = (
    name: "Mount the Foe",
    type: ("Ability", "Zephyr", "Martial Arts"),
    blocks: (
      (kind: "passive", effect: [When you move into the space of a creature your size or bigger with Windstep from #card_ref("Maneuvers"), or with #card_ref("Airshift"), you may climb onto it. You are #kw_riding it, and your melee attacks against it have #kw_advantage.]),
    ),
    reminder: (conditions.riding,),
)

#let mount_the_foe = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.70 and the 2026-10-02 changelog (it uses the Riding rules and also works
with Airshift).

interpretation: Renamed from "I Jump On His Back!" (user ruling 2026-11-28): card names are sober and
say what the card does, never a line a character would say.
*/
