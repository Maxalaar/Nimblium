#import "../../global.typ": *

#let spell_data = (
    name: "Electrickery",
    type: (
        "Spell",
        "Lightning",
        "Tier 4",
    ),
    cost: (
        actions(3),
        mana(4),
    ),
    range: "8",
    effect: [Once per round, when an ally is attacked, you may cast this spell. Choose another creature within Range. On a failed #WIL save, it swaps places with your ally and becomes the new target. While you are #kw_charged, this spell costs 1 Action instead.],
    upcast: [+2 Range.],
    reminder: (conditions.charged,),
)

#let electrickery = creat_spell(spell_data)
