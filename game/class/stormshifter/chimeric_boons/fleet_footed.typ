#import "/global.typ": *

#let ability_data = (
    name: "Fleet Footed",
    type: ("Ability", "Stormshifter", "Chimeric Boon"),
    blocks: (
      (kind: "narrative", effect: [You have #kw_advantage on Stealth checks.]),
      (kind: "passive", effect: [On each of your turns, you may move 2 spaces for free.]),
      (kind: "passive", effect: [You have #kw_advantage when you use Escape from the #card_ref("Grapple") card. Creatures that Grab you have #kw_disadvantage.]),
    ),
)

#let fleet_footed = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: 2 spaces of free movement each turn (was +2 speed).

interpretation: The book's advantage "against the Grappled condition" is written for the
Grapple card: advantage to Escape, and disadvantage for whoever tries to Grab you.
*/
