#import "../../../global.typ": *

#let spell_data = (
    name: "Tempest's Command",
    type: ("Spell", "Lightning", "Utility"),
    cost: (actions(1),),
    effect: [Dispel a minor magical effect, or suppress a stronger one for a while. The stronger the effect, the shorter the time.

    For 1 minute, your eyes glow and your voice booms like thunder.],
)

#let tempests_command = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
