#import "../../../global.typ": *

#let ability_data = (
    name: "Stand Fast, Friends!",
    type: ("Ability", "Oathsworn", "Sacred Decree"),
    blocks: (
      (kind: "passive", effect: [When you roll Initiative, your allies gain temp #HP equal to #STR+#WIL.]),
      (kind: "passive", effect: [You and allies within your #kw_aura have #kw_advantage against fear and against effects that would move you or knock you #kw_prone.]),
    ),
    reminder: (keywords.aura, keywords.advantage,),
)

#let stand_fast_friends = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
