#import "/global.typ": *

#let ability_data = (
    name: "Gnome-folk",
    type: ("Ancestry",),
    blocks: (
      (kind: "passive", name: "Size", effect: [You are Small.]),
      (kind: "narrative", name: "Appearance", effect: [Tiny next to a human, with a big nose, bright eyes and wild hair.]),
      (kind: "active", name: "Optimist", limitation: per_encounter(2), effect: [When an ally within 6 spaces rolls a die, you may let it reroll that die.]),
    ),
)

#let gnome_folk = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.23-27 (Gnome). Book: Optimistic, an ally within Reach 6 rerolls any single die, resets when healed to your max HP, −1 Speed; the changelog makes it a Free Reaction.

house-rule: KEY times per Rest, once per turn (book: resets when healed to max HP).

house-rule: No −1 speed: Gnome-folk is the ancestry that helps allies (identity pass, user ruling 2026-11-27).

house-rule: Uses: 1/encounter, as in the book, instead of KEY times per Rest and once per turn (user
ruling 2026-11-27). Later notes that say "KEY times per Rest" describe the older version.

house-rule: 2/encounter: a small reactive effect (user ruling 2026-11-27).
*/
