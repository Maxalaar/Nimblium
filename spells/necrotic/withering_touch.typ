#import "../../global.typ": *

#let spell_data = (
    name: "Withering Touch",
    type: ("Spell", "Necrotic", "Cantrip"),
    cost: (actions(1),),
    reach: "1",
    damage: "1d12",
    effect: [If this spell hits, the target counts as undead until the start of your next turn.],
    high_Levels: [This spell's damage increases by 6 at levels 5, 10, 15 and 20.],
)

#let withering_touch = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: The book's "for 1 round" is written as "until the start of your next turn".
*/
