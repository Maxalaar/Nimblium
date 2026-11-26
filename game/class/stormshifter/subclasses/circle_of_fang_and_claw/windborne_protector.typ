#import "/global.typ": *

#let ability_data = (
    name: "Windborne Protector",
    type: ("Ability", "Stormshifter", "Fang & Claw"),
    blocks: (
      (kind: "passive", effect: [#card_ref("Fearsome Beast") increases your #defense by #times(2, WIL) and gives you #times(2, "(" + WIL + "+" + LVL + ")") temp #HP.]),
      (kind: "passive", limitation: per_encounter(1), effect: [You may #kw_interpose for a creature within 12 spaces of you.]),
    ),
    reminder: (keywords.interpose,),
)

#let windborne_protector = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Level 7 (was 3), rebuilt: Fearsome Beast's Defense and temp HP are doubled, and
Interpose from 12 spaces 1/encounter (was: a 2-mana reaction to shift and Interpose).
*/
