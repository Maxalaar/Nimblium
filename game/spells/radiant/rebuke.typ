#import "/global.typ": *

#let spell_data = (
    name: "Rebuke",
    type: ("Spell", "Radiant", "Cantrip"),
    cost: (actions(1),),
    reach: "4",
    damage: "1d8",
    effect: [This spell ignores #defense. It deals double damage to an undead or #kw_frightened target, or to a target behind #kw_cover.],
    high_Levels: [
      *Level 5:* 1d8+3 damage.\
      *Level 10:* 1d8+6 damage.\
      *Level 15:* 1d8+9 damage.\
      *Level 20:* 1d8+12 damage.
    ],
    reminder: (conditions.frightened, keywords.cover),
)

#let rebuke = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
