#import "/global.typ": *

#let ability_data = (
    name: "I Can Do This ALL DAY!",
    type: ("Ability", "Commander", "Commander's Order"),
    blocks: (
      (kind: "active", cost: (actions(1),), limitation: per_safe_rest(1), effect: [When you would drop to 0 #HP, your #HP becomes half your max #HP instead.]),
    ),
)

#let i_can_do_this_all_day = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: Your HP becomes half your max HP, once per Safe Rest (book: spend any number of Hit
Dice, 1/encounter); there are no Hit Dice.
*/
