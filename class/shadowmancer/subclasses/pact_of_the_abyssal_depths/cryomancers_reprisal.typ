#import "../../../../global.typ": *

#let ability_data = (
    name: "Cryomancer's Reprisal",
    type: ("Ability", "Shadowmancer", "Pact of the Abyssal Depths"),
    blocks: (
      (kind: "passive", effect: [You may lose half your max #HP to cast any Ice spell without #card_ref("Pilfered Power"). The next creature that hits you with a melee attack this encounter then takes cold damage equal to half the #HP you lost.]),
    ),
)

#let cryomancers_reprisal = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
