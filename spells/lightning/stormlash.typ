#import "../../global.typ": *

#let spell_data = (
    name: "Stormlash",
    type: (
        "Spell",
        "Lightning",
        "Tier 3",
        "AoE",
    ),
    cost: (
        actions(2),
        mana(3),
    ),
    reach: "Line 12",
    damage: "3d8+4",
    effect: [The damage ignores metal armor. Surviving creatures make a #STR save. On a failure, they are #kw_dazed. If they fail by 5 or more, they are #kw_incapacitated for 1 of their turns instead. Creatures with a large amount of metal, such as armor or a longsword, roll with disadvantage.],
    upcast: [+4 damage.],
    reminder: (conditions.dazed, conditions.incapacitated),
)

#let stormlash = creat_spell(spell_data)
