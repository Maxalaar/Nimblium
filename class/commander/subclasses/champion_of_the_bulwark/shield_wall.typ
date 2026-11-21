#import "../../../../global.typ": *

#let ability_data = (
    name: "Shield Wall",
    type: ("Ability", "Commander", "Champion of the Bulwark"),
    blocks: (
      (kind: "passive", effect: [Your shield gains +2 #defense. Allies within 2 spaces of you can use your shield's #defense when they Defend.]),
    ),
)

#let shield_wall = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Was "Allies within 2 spaces gain all the benefits of your shield".
*/
