#import "/global.typ": *
#import "/game/class/stormshifter/stormshifter_keywords.typ": stormshifter_keywords

#let ability_data = (
    name: "Chimeric Sovereign",
    type: ("Ability", "Stormshifter", "Fang & Claw"),
    blocks: (
      (kind: "passive", effect: [You know every Chimeric Boon.]),
      (kind: "passive", effect: [Each #kw_direbeast_form can have 2 Chimeric Boons at a time.]),
    ),
    reminder: (stormshifter_keywords.direbeast_form,),
)

#let chimeric_sovereign = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Replaces Master of Forms (2) (2 more Beastshifts per Safe Rest, 2 more boons, 3 at
a time). Venomous Gaze and Friend of Beasts are removed.
*/
