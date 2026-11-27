#import "/global.typ": *

#let spell_data = (
    name: "Blustery Gale",
    type: (
        "Spell",
        "Wind",
        "Tier 1",
    ),
    cost: (
        actions(2),
        mana(1),
    ),
    range: "12",
    damage: "3d4",
    effect: [This spell has #kw_advantage against #kw_flying, Small and Tiny targets. Whether it hits or misses, the target suffers #kw_knockback 2. If an obstacle stops it, it takes 5 more damage per space.],
    upcast: [Its #kw_knockback increases by 1.],
    reminder: (keywords.advantage, keywords.flying, keywords.knockback),
)

#let blustery_gale = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
house-rule: Knockback damage is the pusher's LVL+1 per space; the book's 5 per space becomes
5 more per space.
*/
