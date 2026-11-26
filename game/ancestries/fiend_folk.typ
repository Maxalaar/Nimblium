#import "/global.typ": *

#let ability_data = (
    name: "Fiend-folk",
    type: ("Ancestry",),
    blocks: (
      (kind: "passive", name: "Size", effect: [You are Medium.]),
      (kind: "narrative", name: "Appearance", effect: [A humanoid bearing the marks of a fiend, such as horns, a pointed tail, ember eyes or reddish skin.]),
      (kind: "active", limitation: (per_turn(1), per_safe_rest(KEY)), effect: [When you fail a check, you may reroll it.]),
    ),
)

#let fiend_folk = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.23-27 (Fiendkin). Book: Flameborn, one of your neutral saves is advantaged instead.

house-rule: There are no saves: an advantaged save becomes advantage on checks of one stat
against other creatures' effects.

house-rule: Reroll a failed check, KEY times per Rest, once per turn (there are no saves).
*/
