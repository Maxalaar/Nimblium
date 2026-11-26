#import "/global.typ": *

#let ability_data = (
    name: "Chorus of Champions",
    type: ("Ability", "Songweaver", "Herald of Courage"),
    blocks: (
      (kind: "active", limitation: per_encounter(1), effect: [Each ally gains 1 action.]),
    ),
)

#let chorus_of_champions = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: The book's "Free Reaction" has no trigger: you may use it at any time, for free.
"All party members" becomes each ally.
*/
