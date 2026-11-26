#import "/global.typ": *

#let spell_data = (
    name: "Vicious Mockery",
    type: ("Spell", "Wind", "Cantrip", "Songweaver"),
    cost: (actions(1),),
    range: "12",
    damage: [1d6+#INT],
    effect: [This spell deals psychic damage, ignoring #defense. Whenever it deals damage, the target is #kw_taunted by you until the end of its next turn.],
    high_Levels: [This spell's damage increases by 3 at levels 5, 10, 15 and 20.],
    reminder: (conditions.taunted,),
)

#let vicious_mockery = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Songweaver only (it was a Wind cantrip of the Core Rules). Damage 1d6+INT (was
1d4+INT), +3 damage every 5 levels (was +2), Taunted until the end of the target's next turn.

interpretation: The book's "On hit" becomes "Whenever it deals damage", and its "Taunted"
names no taunter: the caster is the taunter.
*/
