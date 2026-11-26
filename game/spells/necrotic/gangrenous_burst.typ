#import "/global.typ": *

#let spell_data = (
    name: "Gangrenous Burst",
    type: ("Spell", "Necrotic", "Tier 5", "AoE"),
    cost: (actions(2), mana(5)),
    reach: "8",
    damage: "3d20",
    effect: [You may make its Reach smaller. Each other creature within Reach that has lost #HP makes a #STR check against #dc(10, stat: KEY), with #kw_disadvantage if #kw_bloodied. It takes this spell's damage, ignoring #defense, or half on a success.],
    upcast: [It deals 10 more damage.],
    reminder: (keywords.disadvantage, conditions.bloodied),
)

#let gangrenous_burst = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: The book's "other damaged creatures" is read as the other creatures within
Reach that have lost HP (below their max HP).
*/
