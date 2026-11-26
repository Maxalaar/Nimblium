#import "/global.typ": *

#let ability_data = (
    name: "Rhapsody of the Normal",
    type: ("Ability", "Songweaver", "Lyrical Weaponry"),
    blocks: (
      (kind: "passive", cost: (inspiration_cost(1),), effect: [When #card_ref("Vicious Mockery") hits with a 4 or more on its #primary_die, you may make the target lose all its abilities until the end of its next turn. Until then, it can only make 1 attack that deals 1d4 damage, and move up to 6 spaces.]),
    ),
)

#let rhapsody_of_the_normal = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: The book lists what the target loses (armor, spellcasting, flying,
regeneration, trained features). Written as "all its abilities", with what it can still do.
The changelog's d6 for Vicious Mockery makes the 4 or more a 1 in 2 chance.
*/
