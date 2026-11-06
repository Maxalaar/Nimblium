#import "../../global.typ": *

#let spell_data = (
    name: "Ride the Lightning",
    type: (
        "Spell",
        "Lightning",
        "Tier 6",
        "AoE",
    ),
    cost: (
        actions(3),
        mana(6),
    ),
    range: "12",
    damage: [#kw_d88],
    effect: [Teleport to a spot you can see within Range. If a willing creature is there, swap places with it. Adjacent creatures take the damage. Surviving creatures are knocked back 3 spaces. A creature knocked back 2 or more spaces is also #kw_prone, #kw_dazed, and deafened for 1 day.],
    upcast: [+1 knockback.],
    reminder: (keywords.d88, conditions.prone, conditions.dazed),
)

#let ride_the_lightning = creat_spell(spell_data)
