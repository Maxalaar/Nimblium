#import "/global.typ": *

#let ability_data = (
    name: "Songweaver's Inspiration",
    type: ("Ability", "Songweaver"),
    blocks: (
      (
        kind: "active",
        cost: (inspiration_cost(1),),
        effect: [When an ally rolls a die, you may let it reroll that die and keep either result, or add 1 to the result.],
      ),
    ),
)

#let songweavers_inspiration = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Any single die, and the ally may add 1 instead of rerolling (was: reroll a die of
an attack or a save).

interpretation: The book's "Free Reaction" becomes an ability with a "When..." trigger that
costs 1 Inspiration charge (the Inspiration card), with no 1/round limit: the charges already
limit it.
*/
