#import "/global.typ": *

#let ability_data = (
    name: "Songweaver's Inspiration",
    type: ("Ability", "Songweaver"),
    blocks: (
      (
        kind: "active",
        cost: (inspiration_cost(1),),
        effect: [When an ally within 18 spaces rolls a die, you may let it reroll that die and keep either result, or add 1 to the result.],
      ),
    ),
    levels: [
      *Level 20:* The ally also has #kw_advantage on its other rolls this round.
    ],
    reminder: (keywords.advantage,),
)

#let songweavers_inspiration = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Any single die, and the ally may add 1 instead of rerolling (was: reroll a die of
an attack or a save).

interpretation: I'm So Famous! (level 20: advantage on the ally's later rolls this round; was:
your Inspiration can't fail) is a Levels line.

interpretation: The book's "Free Reaction" becomes an ability with a "When..." trigger that
costs 1 Inspiration charge (the Inspiration card), with no 1/round limit: the charges already
limit it.
*/
