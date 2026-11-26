#import "/global.typ": *

#let ability_data = (
    name: "Beast of the Sea",
    type: ("Ability", "Stormshifter", "Chimeric Boon"),
    blocks: (
      (kind: "narrative", effect: [You can move, breathe and fight underwater without penalty.]),
      (kind: "passive", effect: [When you Defend against a melee attack, you may make the attacker #kw_blind until the start of its next turn.]),
    ),
    reminder: (conditions.blind,),
)

#let beast_of_the_sea = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Defending against a melee attack can Blind the attacker.
*/
