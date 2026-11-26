#import "/global.typ": *

#let ability_data = (
    name: "Harmless Beast",
    type: ("Ability", "Stormshifter", "Beast Form"),
    blocks: (
      (kind: "narrative", effect: [You are a harmless animal, such as a squirrel or a pigeon. You can speak with animals.]),
      (kind: "passive", effect: [You are Tiny. Attacks against you have #kw_disadvantage, and any damage ends this form.]),
    ),
)

#let harmless_beast = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.61 (Beastshift: harmless beasts) and the 2026-10-02 changelog (harmless forms
are free, with no charge).

interpretation: The book's harmless beasts are Tiny (squirrel, pigeon), so the book's Tiny beast
rule (attacks have disadvantage, any damage ends the form) is written here. Taken with
Beastshift, for 1 action; it is not a Direbeast Form.
*/
