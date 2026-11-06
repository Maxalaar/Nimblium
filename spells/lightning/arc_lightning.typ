#import "../../global.typ": *

#let spell_data = (
    name: "Arc Lightning",
    type: (
        "Spell",
        "Lightning",
        "Tier 1",
    ),
    cost: (
        actions(2),
        mana(1),
    ),
    range: "12",
    damage: "3d8",
    effect: [The bolt also strikes the next closest creature to your target, even if it is you or an ally.],
    upcast: [+4 damage.],
)

#let arc_lightning = creat_spell(spell_data)
