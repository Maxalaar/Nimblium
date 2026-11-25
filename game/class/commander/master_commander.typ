#import "/global.typ": *

#let ability_data = (
    name: "Master Commander",
    type: ("Ability", "Commander"),
    blocks: (
      (kind: "passive", effect: [You have #INT more uses of #card_ref("Coordinated Strike!") per #safe_rest, on top of its use per encounter.]),
      (kind: "passive", effect: [Attacks made with #card_ref("Coordinated Strike!") ignore all #kw_disadvantage.]),
    ),
    reminder: (keywords.disadvantage,),
)

#let master_commander = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Was "regain 1 spent use of Coordinated Strike when you roll Initiative" -> an
additional pool of INT uses per Safe Rest, still 1/round. The +1 use per Safe Rest at levels
9, 13 and 17 is on the class sheet.
*/
