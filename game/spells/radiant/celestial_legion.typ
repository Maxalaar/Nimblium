#import "/global.typ": *

#let spell_data = (
    name: "Celestial Legion",
    type: ("Spell", "Radiant", "Tier 7"),
    cost: (actions(1), mana(7)),
    effect: [This spell has 3 charges this encounter. Once per turn, you or an ally may spend 1 charge when attacking or when attacked.

    On an attack, it has #kw_advantage, ignores all #kw_disadvantage and deals 1d20 more damage.

    When attacked, the attacker becomes #kw_frightened, and a #kw_bloodied defender takes 1d20 less damage.],
    upcast: [It has 1 more charge.],
    reminder: (keywords.advantage, keywords.disadvantage, conditions.frightened, conditions.bloodied),
)

#let celestial_legion = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: New spell from the 2026-10-02 changelog, not in the book (Radiant had nothing at
tiers 7 and 8).

interpretation: The changelog names the two uses Reckoning and Trembling. The card describes
them without their names. "Reduce the damage by 1d20 if Bloodied" is read as: the creature
spending the charge takes 1d20 less damage if it is Bloodied.
*/
