#import "../../global.typ": *

#let spell_data = (
    name: "Dragonform",
    type: (
        "Spell",
        "Fire",
        "Tier 9",
    ),
    cost: (
        actions(5),
        mana(9),
    ),
    effect: [Transform into a Huge dragon. Gain 3 actions, a fly #speed of 12, #LVL #defense, #times(10, LVL) temp #HP, and:
- *Tooth & Claw.* Action: (Reach 2) 1d20+#LVL damage (ignoring armor). Inflicts #kw_smoldering.
- *Immolating Breath.* 2 Actions: (Reach: Cone 8). #DEX save against your save DC, #KEY d20 damage, half on save. #kw_smoldering targets fail.
You can maintain this form for as long as the temp #HP granted by this spell remain (max. 10 minutes). When it ends, you drop to 0 #HP.],
    reminder: (conditions.smoldering,)
)

#let dragonform = creat_spell(spell_data)