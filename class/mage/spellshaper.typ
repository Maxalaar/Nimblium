#import "../../global.typ": *

#let mechanic_data = (
    name: "Spellshaper",
    type: (
        "Mechanic",
        "Mage",
    ),
    description: [
      Spellshaper abilities enhance the spells you cast. You can use only 1 Spellshaper ability per turn.
    ],
)

#let spellshaper = creat_mechanic(mechanic_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: The book says "You may use 1/turn" for the whole list. Read as 1 Spellshaper
ability per turn in total, not 1 per ability, so it lives on this card instead of a 1/turn
badge on each ability.

The levels at which you choose Spellshaper abilities (4, 9 and 13) are on the class sheet
(class/mage/class_sheet.typ), not on this card (user ruling 2026-11-21).
*/
