#import "/global.typ": *

#let spell_data = (
    name: "Withering Touch",
    type: ("Spell", "Necrotic", "Cantrip"),
    cost: (actions(1),),
    reach: "1",
    damage: "—",
    effect: [If this spell hits, the target counts as undead until the start of your next turn.],
    levels: [
      *Level 1:* 1d12 damage.\
      *Level 5:* 1d12+6 damage.\
      *Level 10:* 1d12+12 damage.\
      *Level 15:* 1d12+18 damage.\
      *Level 20:* 1d12+24 damage.
    ],
)

#let withering_touch = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: The book's "for 1 round" is written as "until the start of your next turn".
*/
