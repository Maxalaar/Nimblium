#import "/global.typ": *

#let ability_data = (
    name: "Rallying Presence",
    type: ("Ability", "Oathsworn", "Sacred Decree"),
    blocks: (
      (kind: "passive", effect: [When combat starts, your allies within 18 spaces gain temp #HP equal to #STR+#WIL.]),
      (kind: "passive", effect: [You and allies within your #kw_aura have #kw_advantage against fear and against effects that would move you or knock you #kw_prone.]),
    ),
    reminder: (keywords.aura, keywords.advantage,),
)

#let rallying_presence = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: Renamed from "Stand Fast, Friends!" (user ruling 2026-11-28): card names are sober and
say what the card does, never a line a character would say.
*/
