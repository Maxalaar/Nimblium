#import "/global.typ": *

#let ability_data = (
    name: "Fiend-folk",
    type: ("Ancestry",),
    blocks: (
      (kind: "passive", name: "Size", effect: [You are Medium.]),
      (kind: "narrative", name: "Appearance", effect: [A humanoid bearing the marks of a fiend, such as horns, a pointed tail, ember eyes or reddish skin.]),
      (kind: "active", name: "Infernal Dread", limitation: per_encounter(1), effect: [When you hit a creature, it is #kw_frightened of you until the end of its next turn.]),
    ),
    reminder: (conditions.frightened,),
)

#let fiend_folk = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.23-27 (Fiendkin). Book: Flameborn, one of your neutral saves is advantaged instead.

house-rule: There are no saves: an advantaged save becomes advantage on checks of one stat
against other creatures' effects.

house-rule: Reroll a failed check, KEY times per Rest, once per turn (there are no saves).

house-rule: Instead of a reroll (checks belong to Small-folk and Human-folk), the fiend frightens what it hits (identity pass, user ruling 2026-11-27).

house-rule: Uses: 1/encounter, as in the book, instead of KEY times per Rest and once per turn (user
ruling 2026-11-27). Later notes that say "KEY times per Rest" describe the older version.
*/
