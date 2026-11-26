#import "/global.typ": *

#let ability_data = (
    name: "Raging Tempest",
    type: ("Ability", "Stormshifter", "Sky & Storm"),
    blocks: (
      (kind: "passive", effect: [When you crit with a spell, you may cast a cantrip for free, from a school you know and haven't cast a spell from this turn. It has the same #kw_advantage or #kw_disadvantage as that spell.]),
    ),
)

#let raging_tempest = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Any spell crit (was: tiered spells only).
*/
