#import "/global.typ": *

#let ability_data = (
    name: "Shining Mandate",
    type: ("Ability", "Oathsworn", "Sacred Decree"),
    blocks: (
      (kind: "passive", limitation: per_round(1), effect: [When you are attacked while you already have Judgment Dice, an ally within your #kw_aura rolls 1 Judgment Die and adds it to the damage of its next attack.]),
      (kind: "narrative", effect: [You have #kw_advantage on checks to see through illusions.]),
    ),
    reminder: (keywords.aura, keywords.advantage,),
)

#let shining_mandate = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: "Apply it to their next attack" is read as adding the die to that attack's
damage, like your own Judgment Dice.
*/
