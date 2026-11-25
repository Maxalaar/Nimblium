#import "/global.typ": *

#let spell_data = (
    name: "Spark Buddy",
    type: ("Spell", "Lightning", "Utility"),
    casting_time: "1 min",
    effect: [Conjure a Tiny electric helper, the size of a squirrel, for up to 1 hour. It can fetch Tiny objects, open unlocked doors, light a small area or give a harmless shock.

    It vanishes in sparks if it takes damage or moves more than 6 spaces away from you.],
)

#let spark_buddy = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: The ~1 lb fetch limit is removed.

interpretation: Only the weight limit is removed; the helper still fetches Tiny objects, as
the book says.
*/
