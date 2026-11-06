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
    concentration: "Up to 1 minute.",
    reach: "12",
    damage: "2d6",
    effect: [Conjure razor-sharp icy spikes in 5 contiguous spaces within Reach; this area is #kw_difficult_terrain. Creatures that enter these spaces or who are in the area when you conjure them, suffer damage for each space they touch.],
    upcast: "+1 space, +1 damage.",
    reminder: (keywords.difficult_terrain,),
)

#let rimeblades = creat_spell(spell_data)