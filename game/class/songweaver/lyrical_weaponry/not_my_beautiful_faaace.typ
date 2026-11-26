#import "/global.typ": *

#let ability_data = (
    name: "Not My Beautiful Faaace!",
    type: ("Ability", "Songweaver", "Lyrical Weaponry"),
    blocks: (
      (kind: "passive", limitation: per_encounter(1), effect: [When you Defend against an attack, the attacker makes a #WIL check against #dc(10, stat: KEY). If it fails, it must attack another creature within its reach or range instead. If there is none, the attack misses. If it fails by 5 or more, it attacks itself instead. If it succeeds, it rerolls the attack and keeps either result.]),
    ),
)

#let not_my_beautiful_faaace = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: On a success, the attacker rerolls the attack and keeps either result (was: it
attacks you with disadvantage).

interpretation: The book lets the attacker choose the new target. "Attacks itself" uses the
same attack against the attacker.
*/
