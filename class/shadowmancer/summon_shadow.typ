#import "../../global.typ": *

#let spell_data = (
    name: "Summon Shadow",
    type: ("Spell", "Necrotic", "Cantrip", "Shadowmancer"),
    cost: (actions(1),),
    effect: [Summon 1 Shadow adjacent to you. You can have up to #INT Shadows.],
    high_Levels: [At levels 5, 10, 15 and 20, you summon 1 more Shadow.],
)

#let summon_shadow = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Shadowmancer only, split from Command Shadows. Summons 1 adjacent Shadow; High
Levels +1 Shadow every 5 levels (was +1 Reach). Shadow Limit is INT (was INT or LVL,
whichever is lower).
*/
