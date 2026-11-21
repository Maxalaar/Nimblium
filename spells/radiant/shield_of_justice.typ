#import "../../global.typ": *

#let spell_data = (
    name: "Shield of Justice",
    type: ("Spell", "Radiant", "Tier 4"),
    cost: (mana(4),),
    effect: [Once per round, you may cast this spell while Defending. Each creature that attacks you this round is #kw_blind until the end of its next turn. You deal damage to it equal to the damage it deals you, ignoring #defense.],
    upcast: (
        [It deals 5 more damage.],
        [Your #defense increases by 5 this round.],
    ),
    reminder: (conditions.blind,),
)

#let shield_of_justice = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: "+5 Defense" in the changelog's upcast is read as lasting this round, while
the spell protects you.
*/
