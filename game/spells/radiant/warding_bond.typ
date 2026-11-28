#import "/global.typ": *

#let spell_data = (
    name: "Warding Bond",
    type: ("Spell", "Radiant", "Tier 2"),
    cost: (mana(2),),
    concentration: "1 min",
    reach: "4",
    effect: [Choose a willing creature within Reach. It takes 2 less damage. Once per round, when it takes damage, you may take any amount of that damage instead.],
    upcast: [The damage reduction and its Reach each increase by 2.],
    reminder: (keywords.concentration,),
)

#let warding_bond = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: The changelog gives Concentration without a duration. The book's spell
lasted 1 minute, so Concentration lasts up to 1 minute, like the other spells.
*/
