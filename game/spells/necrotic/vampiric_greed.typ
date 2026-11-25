#import "/global.typ": *

#let spell_data = (
    name: "Vampiric Greed",
    type: ("Spell", "Necrotic", "Tier 3", "AoE"),
    cost: (actions(2), mana(3)),
    range: "8",
    damage: "4d12",
    effect: [Each creature of your choice within Range takes this spell's damage. You gain 1 Wound and regain #HP equal to the damage dealt. You gain 1 more Wound for each creature that survives.],
    upcast: (
        [Its Range increases by 1.],
        [It deals 10 more damage.],
    ),
)

#let vampiric_greed = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: The book gives the spell AoE and Range 8 without an area. It is read as
hitting each creature you choose within Range. The changelog's "+1 Reach" upcast is written as
+1 Range, the spell's distance.
*/
