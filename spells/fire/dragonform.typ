#import "../../global.typ": *

#let spell_data = (
    name: "Dragonform",
    type: (
        "Spell",
        "Fire",
        "Tier 9",
    ),
    cost: (
        "5 Action",
        "9 Mana",
    ),
    effect: [Transform into a Huge dragon. Gain 3 actions, a fly speed of 12, LVL Armor, 10×LVL temp HP, and:
- *Tooth & Claw.* Action: (Reach 2) 1d20+LVL damage (ignoring armor). Inflicts Smoldering.
- *Immolating Breath.* 2 Actions: (Reach: Cone 8). DC 20 DEX save, KEY d20 damage, half on save. Smoldering targets fail.
You can maintain this form for as long as the temp HP granted by this spell remain (max. 10 minutes). When it ends, you drop to 0 HP.],
    reminder: (conditions.smoldering,)
)

#let dragonform = creat_spell(spell_data)