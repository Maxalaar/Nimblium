#import "../../global.typ": *

#let ability_data = (
    name: "Greedy Pact",
    type: ("Ability", "Shadowmancer"),
    blocks: (
      (kind: "passive", effect: [When #card_ref("Pilfered Power") would damage you, make a #STR save. On 9 or less, you take the damage. On 10 to 19, you take only 10 damage. On 20 or more, you take no damage and cast the spell 1 tier higher.]),
    ),
)

#let greedy_pact = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
