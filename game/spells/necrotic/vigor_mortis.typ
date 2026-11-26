#import "/global.typ": *

#let spell_data = (
    name: "Vigor Mortis",
    type: ("Spell", "Necrotic", "Tier 4"),
    cost: (actions(1), mana(4)),
    effect: [Once per round, when an ally within 18 spaces drops to 0 #HP, you may cast this spell on it. While it is #kw_dying, it keeps all its actions, doesn't make #STR checks when it attacks, and gains 1 fewer Wound from damage, to a minimum of 1.],
    upcast: [It gains 10 more temp #HP.],
    reminder: (conditions.dying,),
)

#let vigor_mortis = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: New spell from the 2026-10-02 changelog, not in the book. It takes the place
of Greater Shadow, which became a Shadowmancer ability.

interpretation: The changelog gives neither a cost in actions nor a distance. It is written
as a reaction (1 action, once per round) on any ally, and the effect lasts while the ally is
Dying.
*/
