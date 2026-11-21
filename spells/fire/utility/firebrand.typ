#import "../../../global.typ": *

#let spell_data = (
    name: "Firebrand",
    type: ("Spell", "Fire", "Utility"),
    cost: (actions(1),),
    effect: [Touch a surface to secretly mark it with a symbol or a short message. It appears when someone nearby speaks a command word you choose.],
)

#let firebrand = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: The book says the mark is revealed by "speaking a chosen command word while
nearby" without saying who speaks it; anyone who knows the word can reveal it.
*/
