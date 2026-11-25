#import "/global.typ": *

#let spell_data = (
    name: "Sacrifice",
    type: ("Spell", "Radiant", "Tier 6"),
    cost: (actions(1), mana(6)),
    reach: "4",
    effect: [You drop to 0 #HP and become #kw_dying. You can't have more than 0 #HP until you take a #safe_rest. Other creatures within Reach regain #HP equal to your max #HP, divided among them as you choose.

    You may revive a creature that died in the last minute by giving it at least 20 #HP. It also recovers 2 Wounds. A creature can be revived by this spell only once.],
    upcast: [Its Reach increases by 4.],
    reminder: (conditions.dying,),
)

#let sacrifice = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
