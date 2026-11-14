#import "../../global.typ": *

#let mechanic_data = (
    name: "Fury Dice",
    type: (
        "Mechanic",
        "Berserker",
    ),
    description:[
      \
      • When you roll a Fury Die, roll 1d4 and set it aside.\
      • You can have up to #KEY Fury Dice at once.\
      • You lose all your Fury Dice when you stop being #kw_raging.\
      • If you gain a Fury Die while you already have the maximum, roll it and choose which dice to keep.\
      • Whenever you make a #STR attack, you may add all your Fury Dice to its damage.\
      \
      *Level 6:* Your Fury Dice become 1d6.\
      *Level 9:* Your Fury Dice become 1d8.\
      *Level 13:* Your Fury Dice become 1d10.\
      *Level 17:* Your Fury Dice become 1d12.\
      *Level 20:* Whenever you roll less than 5 on a Fury Die, it becomes a 5.\
    ],
    reminder: (berserker_keywords.raging,),
)

#let fury_dice = creat_mechanic(mechanic_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
