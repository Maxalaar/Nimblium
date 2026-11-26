#import "/global.typ": *

#let ability_data = (
    name: "Martial Training",
    type: ("Ability", "Zephyr"),
    blocks: (
      (kind: "passive", effect: [Your unarmed strikes can crit.]),
      (kind: "passive", effect: [With no item in your hands, your fists count as dual wielded.]),
    ),
)

#let martial_training = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.67 (weapons: Melee) and the 2026-10-02 changelog (weapons: "Melee, Unarmed Strikes";
only proficient heroes count their fists as dual wielded).

house-rule: There is no weapon proficiency (Combat page): the Zephyr's proficiency with
unarmed strikes becomes this card, gained at level 1.
*/
