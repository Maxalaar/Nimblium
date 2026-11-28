#import "/global.typ": *

#let ability_data = (
    name: "Withering Presence",
    type: ("Ability", "Commander", "Spellblade"),
    blocks: (
      (kind: "passive", effect: [When you use #card_ref("Commanding Presence"), the enemy also takes necrotic damage equal to the maximum of your Combat Die, and counts as undead until your next turn.]),
    ),
)

#let withering_presence = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.76 (Arcane Command: an empowered Commander's Order) and the 2026-10-02
changelog (Protective Taunt follows its new trigger; Withering Strike is now Withering Presence on
Commanding Presence).

interpretation: The changelog gives Withering Presence no text: the book's Withering Strike
(extra necrotic damage equal to the max of your Combat Die, considered undead for 1 round) is
put on Commanding Presence.
*/
