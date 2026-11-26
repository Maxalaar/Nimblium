#import "/global.typ": *

#let spell_data = (
    name: "Unspeakable Word",
    type: ("Spell", "Necrotic", "Tier 6"),
    cost: (actions(2), mana(6)),
    reach: "8",
    damage: [#kw_d66],
    effect: [This spell has #kw_advantage, ignores #defense, and can't miss or crit.

    The target makes an #INT check against #dc(10, stat: KEY), with #kw_disadvantage if it is #kw_bloodied or #kw_frightened. If it fails, it is #kw_weakened 10 and you are #kw_empowered 10. If it succeeds, you are #kw_weakened 10 and it is #kw_empowered 10. Each lasts until that creature's next attack.],
    upcast: [Its DC increases by 1, and it deals 10 more damage.],
    reminder: (keywords.d66, keywords.advantage, keywords.disadvantage, conditions.bloodied, conditions.frightened, conditions.weakened, conditions.empowered),
)

#let unspeakable_word = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: The changelog gives Empowered 10 "on your next attack" and no duration for
Weakened. Both last until that creature's next attack. The book's upcast (+1 DC, +10 damage),
its "can't miss or crit" and the save with disadvantage are kept, since the changelog doesn't
change them.
*/
