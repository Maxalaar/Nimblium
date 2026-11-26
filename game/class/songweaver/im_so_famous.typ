#import "/global.typ": *

#let ability_data = (
    name: "I'm So Famous!",
    type: ("Ability", "Songweaver"),
    blocks: (
      (kind: "passive", effect: [When you use #card_ref("Songweaver's Inspiration") on an ally, it also has #kw_advantage on its other rolls this round.]),
    ),
    reminder: (keywords.advantage,),
)

#let im_so_famous = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Advantage on the ally's later rolls this round (was: your Inspiration can't fail).
*/
