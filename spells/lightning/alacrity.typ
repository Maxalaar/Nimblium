#import "../../global.typ": *

#let spell_data = (
    name: "Alacrity",
    type: (
        "Spell",
        "Lightning",
        "Tier 2",
    ),
    cost: (
        mana(2),
    ),
    range: "4",
    effect: [Once per round, you may cast this spell while Defending. After the damage is dealt, you become #kw_charged, then teleport anywhere within Range.\
    Once per turn, you may also cast this spell during your turn to teleport up to your #speed.],
    upcast: [+4 Range.],
    reminder: (conditions.charged,),
)

#let alacrity = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
