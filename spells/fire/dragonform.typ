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
    effect: [You can fly, and your #speed becomes 12. Your #defense becomes #LVL. You gain #times(10, LVL) temp #HP and 3 actions. You can't use your other abilities, but you can still cast spells.\
    You may end this form at any time. It ends after 10 minutes or when you lose this temp #HP. Your #HP then becomes 0, and you are #kw_dying.],
    blocks: (
        (
            name: "Tooth & Claw",
            kind: "active",
            cost: (actions(1),),
            effect: [A creature within 2 spaces takes 1d20+#LVL damage, ignoring armor. It becomes #kw_smoldering.],
        ),
        (
            name: "Immolating Breath",
            kind: "active",
            cost: (actions(2),),
            effect: [Each creature in a Cone 8 makes a #DEX save. If it fails, it takes #times(KEY, "d20") damage. If it succeeds, it takes half. A #kw_smoldering creature automatically fails.],
        ),
    ),
    reminder: (conditions.smoldering, conditions.dying)
)

#let dragonform = creat_spell(spell_data)