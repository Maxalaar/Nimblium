#import "/global.typ": *

#let ability_data = (
    name: "Fight Picker",
    type: ("Ability", "Songweaver", "Herald of Snark"),
    blocks: (
      (kind: "passive", limitation: per_turn(1), effect: [When #card_ref("Vicious Mockery") damages an enemy, you may choose an ally within 18 spaces. The enemy is #kw_taunted by that ally instead of you, until the end of the enemy's turn.]),
    ),
    reminder: (conditions.taunted,),
)

#let fight_picker = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
