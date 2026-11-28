#import "/global.typ": *

#let ability_data = (
    name: "Fury Guard",
    type: (
        "Ability",
        "Berserker",
    ),
    blocks: (
      (
        kind: "active",
        cost: (fury_dice_cost("X"),),
        effect: [When you are attacked, reduce the damage you take by #STR+#DEX for each Fury Die spent.],
      ),
    ),
)

#let fury_guard = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

interpretation: Written as an active block with a Fury Dice cost, like Bloodlust. The book
gives no action cost.

interpretation: Renamed from "That all you got?!" (user ruling 2026-11-28): card names are sober and
say what the card does, never a line a character would say.
*/
