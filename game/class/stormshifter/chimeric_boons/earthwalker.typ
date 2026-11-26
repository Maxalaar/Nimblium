#import "/global.typ": *

#let ability_data = (
    name: "Earthwalker",
    type: ("Ability", "Stormshifter", "Chimeric Boon"),
    blocks: (
      (kind: "passive", effect: [Your #defense increases by #STR.]),
      (kind: "passive", effect: [You can burrow through dirt and unworked rock at half your #speed.]),
      (kind: "passive", effect: [On your turn, you can stand up from #kw_prone for free.]),
    ),
    reminder: (conditions.prone,),
)

#let earthwalker = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: +STR Defense (was +2 armor). Burrowing leaves no tunnel. You stand up from Prone
for free (was: advantage against Prone).
*/
