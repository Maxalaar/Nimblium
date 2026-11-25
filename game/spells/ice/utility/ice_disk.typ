#import "/global.typ": *

#let spell_data = (
    name: "Ice Disk",
    type: ("Spell", "Ice", "Utility"),
    casting_time: "1 min",
    effect: [Conjure a disk of ice that floats just above the ground and follows you. It can carry a moderately heavy load. It lasts 1 hour or until you cast this spell again.],
)

#let ice_disk = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Carries "moderately heavy weight" (was a hard 250 lb limit).
*/
