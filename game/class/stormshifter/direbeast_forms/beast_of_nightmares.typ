#import "/global.typ": *

#let ability_data = (
    name: "Beast of Nightmares",
    type: ("Ability", "Stormshifter", "Direbeast Form"),
    blocks: (
      (kind: "passive", name: "Horrible Little Thing", effect: [You become a #kw_swarm. Your #speed is 2. You can't Defend or #kw_interpose. Attacks against you have #kw_disadvantage, and any damage ends this form.]),
      (kind: "active", cost: (actions(1),), limitation: per_round(1), name: "Sting", damage: [1d4+#times(3, LVL) acid], effect: [It targets a creature in your space, and ignores #defense. Whenever it crits, the target is #kw_dazed.]),
    ),
    reminder: (keywords.swarm, conditions.dazed),
)

#let beast_of_nightmares = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: On a crit, the target is Dazed (was: 4×LVL damage).

house-rule: The book's "attackers cannot target you until you become conspicuous" is removed
(user ruling 2026-11-26). The form is a Swarm instead, the general keyword of swarming
creatures (Monsters and More, Game Master's Guide), which can stay in its target's space.

interpretation: The book's "Reach: 0" is written as a creature in your space.
*/
