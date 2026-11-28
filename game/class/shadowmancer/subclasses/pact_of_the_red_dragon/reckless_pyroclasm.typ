#import "/global.typ": *

#let ability_data = (
    name: "Reckless Pyroclasm",
    type: ("Ability", "Shadowmancer", "Pact of the Red Dragon"),
    blocks: (
      (kind: "passive", effect: [You may cast #card_ref("Pyroclasm") without #card_ref("Pilfered Power") if you include yourself in its damage. You have #kw_advantage on its check.]),
    ),
    reminder: (keywords.advantage,),
)

#let reckless_pyroclasm = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

The book also grants 1 Fire Utility Spell: no card for that (workflow.txt).

interpretation: Renamed from "We'll ALL Burn!" (user ruling 2026-11-28): card names are sober and
say what the card does, never a line a character would say.
*/
