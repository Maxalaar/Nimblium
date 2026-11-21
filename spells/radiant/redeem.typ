#import "../../global.typ": *

#let spell_data = (
    name: "Redeem",
    type: ("Spell", "Radiant", "Tier 9", "AoE"),
    cost: ("24 hours", mana(9)),
    effect: [This spell consumes a diamond worth at least 10,000 gp. Revive any number of creatures you choose within 1 mile that died in the past year. It can't revive a creature that died of old age or that was already revived by this spell.],
)

#let redeem = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: The book's casting time of 24 hours is shown as a cost capsule.
*/
