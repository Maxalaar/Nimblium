#import "/global.typ": *

#let spell_data = (
    name: "Dread Visage",
    type: ("Spell", "Necrotic", "Tier 2"),
    cost: (mana(2),),
    damage: "1d12",
    effect: [Once per round, you may cast this spell while Defending. Each creature that makes a melee attack against you this round becomes #kw_frightened of you and takes this spell's damage.

    While you are #kw_dying, this spell costs 2 less mana.],
    upcast: [It deals 2 more damage, and your #defense increases by 2 this round.],
    reminder: (conditions.frightened, conditions.dying),
)

#let dread_visage = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: The book's "+2 armor" upcast is read as +2 Defense this round, like
Shield of Justice.
*/
