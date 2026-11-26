#import "/global.typ": *
#import "/game/class/stormshifter/stormshifter_keywords.typ": stormshifter_keywords

#let ability_data = (
    name: "Stormborn",
    type: ("Ability", "Stormshifter"),
    blocks: (
      (kind: "passive", effect: [When you roll Initiative, you become #kw_charged.]),
      (kind: "passive", effect: [You have #kw_advantage on #STR checks to keep your concentration.]),
      (kind: "narrative", effect: [You have #kw_advantage on Naturecraft checks.]),
    ),
    high_Levels: [*Level 13:* When a #kw_direbeast_form ends, you may cast a cantrip for free.],
    reminder: (stormshifter_keywords.direbeast_form, conditions.charged, keywords.advantage),
)

#let stormborn = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Charged on Initiative, and advantage on every Naturecraft and Concentration check
(was: lightning resistance, and advantage on 1 such check per day). Level 13 keeps the free
cantrip when a form ends; maximizing a Wind spell with a Beastshift charge is removed.
*/
