#import "/global.typ": *

#let ability_data = (
    name: "Chord of Chaos",
    type: ("Ability", "Songweaver", "Herald of Snark"),
    blocks: (
      (kind: "active", cost: (actions(1),), limitation: per_encounter(1), effect: [Move each creature within 12 spaces up to 3 spaces. You can't move a creature into a space where it would take damage.]),
    ),
)

#let chord_of_chaos = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: The book says "within hearing of your song" and "not into an obviously
dangerous place". Written as within 12 spaces and "a space where it would take damage", so
that no GM ruling is needed.
*/
