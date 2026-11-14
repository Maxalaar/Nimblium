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
    effect: [Once per round, when an ally within Range is attacked, you may cast this spell. Choose another creature within Range. It makes a #WIL save. If it fails, it swaps places with that ally and becomes the target of the attack.\
    While you are #kw_charged, this spell costs #actions(1) instead.],
    upcast: [+2 Range.],
    reminder: (conditions.charged,),
)

#let electrickery = creat_spell(spell_data)
