#import "../../../global.typ": *

#let ability_data = (
    name: "Coordinated Strike!",
    type: ("Ability", "Commander", "Commander's Order"),
    blocks: (
      (kind: "active", limitation: per_encounter(1), effect: [You and an ally within 6 spaces each make a weapon attack or an unarmed attack, or cast a cantrip, for free. You can use it only once per round.]),
    ),
)

#let coordinated_strike = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: 1/encounter at level 1 (was 1/round, INT times per Safe Rest); now allows an
unarmed attack. Master Commander adds INT uses per Safe Rest at level 5.
*/
