#import "../../global.typ": *

#let spell_data = (
    name: "Shadow Blast",
    type: ("Spell", "Necrotic", "Cantrip", "Shadowmancer"),
    cost: (actions(1),),
    range: "8",
    damage: [1d12+#DEX],
    effect: [Cast this spell only once per round.],
    high_Levels: [At levels 5, 10, 15 and 20, it deals 1d12 more damage.],
)

#let shadow_blast = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Shadowmancer only. Damage 1d12+DEX (was 1d12+KEY). Once per round, as in the
Core Rules (the Heroes book said 1/turn).
*/
