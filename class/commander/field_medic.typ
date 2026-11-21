#import "../../global.typ": *

#let ability_data = (
    name: "Field Medic",
    type: ("Ability", "Commander"),
    blocks: (
      (kind: "narrative", effect: [Roll 1 more die for each health potion you give.]),
      (kind: "narrative", effect: [When you or an ally spends Hit Dice to recover #HP, if you spent at least 10 minutes examining their wounds, they add your Examination bonus to the #HP recovered.]),
    ),
)

#let field_medic = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
