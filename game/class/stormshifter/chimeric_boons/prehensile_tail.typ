#import "/global.typ": *

#let ability_data = (
    name: "Prehensile Tail",
    type: ("Ability", "Stormshifter", "Chimeric Boon"),
    blocks: (
      (kind: "passive", effect: [Whenever you hit a creature with a melee attack, it is #kw_grappled by you. Only 1 creature at a time can be Grappled this way.]),
    ),
    reminder: (conditions.grappled,),
)

#let prehensile_tail = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: On a melee hit, the target is Grappled, 1 at a time (was: creatures your size or
smaller are Grappled, and you may move with a larger one).
*/
