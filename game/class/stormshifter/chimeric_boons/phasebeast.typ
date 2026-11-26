#import "/global.typ": *

#let ability_data = (
    name: "Phasebeast",
    type: ("Ability", "Stormshifter", "Chimeric Boon"),
    blocks: (
      (kind: "passive", effect: [When you enter or leave this form, you may teleport up to 6 spaces to a space you can see.]),
    ),
)

#let phasebeast = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
