#import "/global.typ": *

#let ability_data = (
    name: "Airshift",
    type: ("Ability", "Zephyr", "Martial Arts"),
    blocks: (
      (kind: "passive", effect: [You can't be #kw_grappled or #kw_restrained unless you are #kw_incapacitated.]),
      (kind: "passive", effect: [When you move, you ignore #kw_difficult_terrain.]),
      (kind: "narrative", effect: [You can walk on walls, ceilings, water or lava without suffering their effects.]),
    ),
    reminder: (conditions.grappled, conditions.restrained, conditions.incapacitated, keywords.difficult_terrain),
)

#let airshift = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.70 and the 2026-10-02 changelog (it also stops Restrained).

interpretation: "While conscious" means unless Incapacitated. "Travel across all terrain as normal
ground, ignoring all ill effects" is Difficult Terrain in combat, and a narrative block for
walls, water or lava.
*/
