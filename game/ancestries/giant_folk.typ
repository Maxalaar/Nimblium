#import "/global.typ": *

#let ability_data = (
    name: "Giant-folk",
    type: ("Ancestry",),
    blocks: (
      (kind: "passive", name: "Size", effect: [You are Large.]),
      (kind: "narrative", name: "Appearance", effect: [A huge humanoid, twice as tall as a human, with a body as broad as a boulder.]),
      (kind: "passive", name: "Giant Strength", effect: [Your #STR increases by 1. Ranged attacks against you have #kw_advantage.]),
    ),
    reminder: (keywords.advantage,),
)

#let giant_folk = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.23-27 (Half-Giant). Book: Strength of Stone, force an enemy to reroll a crit against you, 1/encounter, +2 Might.

house-rule: +1 STR and +1 Vitality instead of +2 Might, for a Large body (balance pass, user ruling 2026-11-27). Ranged attacks against you have advantage; the crit reroll is dropped.

house-rule: No Vitality bonus: Vitality belongs to Dwarf-folk (identity pass, user ruling 2026-11-27).
*/
