#import "../../global.typ": *

#let spell_data = (
    name: "Rebuke",
    type: ("Spell", "Radiant", "Cantrip"),
    cost: (actions(1),),
    reach: "4",
    damage: "1d8",
    effect: [This spell ignores #defense. It deals double damage to an undead or #kw_frightened target, or to a target behind #kw_cover.],
    high_Levels: [This spell's damage increases by 3 at levels 5, 10, 15 and 20.],
    reminder: (conditions.frightened, keywords.cover),
)

#let rebuke = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
