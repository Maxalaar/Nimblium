#import "../../global.typ": *

#let spell_data = (
    name: "Rimeblades",
    type: (
        "Spell",
        "Ice",
        "Tier 4",
        "AoE",
    ),
    cost: (
        actions(3),
        mana(4),
    ),
    concentration: "1 min",
    reach: "12",
    damage: "2d6",
    effect: [Choose 5 contiguous spaces within Reach. They become #kw_difficult_terrain. Each creature in these spaces takes this spell's damage. Whenever a creature enters one of these spaces, it takes this spell's damage.],
    upcast: [Choose 1 more space. It deals 1 more damage.],
    reminder: (keywords.difficult_terrain,),
)

#let rimeblades = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
