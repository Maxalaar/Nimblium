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
      • You can have a maximum of KEY Fury Dice at once.\
      • Fury Dice are lost when your #keyword_style[Raging] ends.\
      • If you gain a Fury Die while already at your max, roll as normal and choose which dice to keep.\
      • On every STR-based attack, you may add all your Fury Dice to the damage, they count as damage dice when calculating monster armor.\
      \
      *Level 6:* Your Fury Dice becomes 1d6.\
      *Level 9:* Your Fury Dice becomes 1d8.\
      *Level 13:* Your Fury Dice becomes 1d10.\
      *Level 17:* Your Fury Dice becomes 1d12.\
      *Level 20:* Anytime you roll less than 6 on a Fury Die, change it to 6 instead.\
    ],
    reminder: (berserker_keywords.raging,),
)

#let fury_dice = creat_mechanic(mechanic_data)
