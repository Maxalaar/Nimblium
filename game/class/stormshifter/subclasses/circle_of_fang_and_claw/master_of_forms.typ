#import "/global.typ": *
#import "/game/class/stormshifter/stormshifter_keywords.typ": stormshifter_keywords

#let ability_data = (
    name: "Master of Forms",
    type: ("Ability", "Stormshifter", "Fang & Claw"),
    blocks: (
      (kind: "passive", limitation: per_encounter(1), effect: [When you roll the #primary_die of an attack in a #kw_direbeast_form, you may add 1 to it or subtract 1 from it.]),
    ),
    reminder: (stormshifter_keywords.direbeast_form,),
)

#let master_of_forms = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Rebuilt (was: your forms can have 2 Chimeric Boons at a time).

interpretation: The changelog says "when you would miss or crit". Written as any roll of the
Primary Die, so that you can turn a miss into a hit or a near-maximum into a crit.
*/
