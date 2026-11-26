#import "/global.typ": *

#let ability_data = (
    name: "Inspiring Presence",
    type: ("Ability", "Songweaver", "Herald of Courage"),
    blocks: (
      (kind: "passive", effect: [When you use #card_ref("Songweaver's Inspiration"), the ally nearest to you has #kw_advantage on its next roll this round.]),
    ),
    reminder: (keywords.advantage,),
)

#let inspiring_presence = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: The nearest ally has advantage (was: allies within 12 spaces gain WIL temp HP).

interpretation: The changelog only says "whichever ally is nearest to you has advantage". It
is read as advantage on that ally's next roll this round, each time you use Inspiration.
*/
