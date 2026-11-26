#import "/global.typ": *
#import "/game/class/stormshifter/stormshifter_keywords.typ": stormshifter_keywords

#let ability_data = (
    name: "Swiftshift",
    type: ("Ability", "Stormshifter", "Fang & Claw"),
    blocks: (
      (kind: "passive", effect: [When you roll Initiative, you may use #card_ref("Beastshift") for free.]),
      (kind: "passive", limitation: per_turn(1), effect: [While you are in a #kw_direbeast_form, you may use Direbeast from #card_ref("Beastshift") without spending its action, to take another #kw_direbeast_form. You still spend its Direbeast charge.]),
    ),
    reminder: (stormshifter_keywords.direbeast_form,),
)

#let swiftshift = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Rebuilt (was: Beastshift or move for free on Initiative, change form for free, or
as a reaction for 1 mana, without temp HP).
*/
