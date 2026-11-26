#import "/global.typ": *

#let spell_data = (
    name: "Entice",
    type: ("Spell", "Necrotic", "Cantrip"),
    cost: (actions(1),),
    range: "12",
    damage: "1d12",
    effect: [Cast this spell only once per round. It ignores #defense. The target moves toward you as many spaces as the #primary_die.

    In exchange, the target's next attack deals 1d12 more damage.],
    high_Levels: [
      You may add these dice to this spell's damage. If you do, the target's next attack also deals as many more d12 of damage.\
      *Level 5:* 1d12.\
      *Level 10:* 2d12.\
      *Level 15:* 3d12.\
      *Level 20:* 4d12.
    ],
)

#let entice = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: The changelog says the target "gains 1d12 to add to its next attack". It is
read as 1d12 more damage on that attack. "Every 5 levels you may add another d12" is read as
adding it both to the spell's damage and to the target's bonus.
*/
