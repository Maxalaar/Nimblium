#import "/global.typ": *

#let item_data = (
    name: "Wand",
    type: ("Item", "Wand"),
    family_icon: "items/gear/wand.svg",
    level: blank(6mm),
    charges: blank(6mm),
    slots: 2,
    blocks: (
      (kind: "active", cost: (charge_cost(1),), effect: [Cast this spell without spending mana, for the actions its card shows: #blank(28mm)]),
      weapon_properties.one_handed,
    ),
    reminder: ([*For the GM:* write a spell, its level and its charges. Level: 1 for a cantrip, otherwise twice the spell's tier. Charges: 3 for a cantrip up to tier 2, 2 for tiers 3 to 5, 1 for tiers 6 to 9.],),
)

#let wand = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.42-43 (Spell Scrolls & Wands; example wands: cantrip 3 charges, tier 2
3 or 2, tier 3 2, tier 6 to 9 1).

house-rule: One blank Wand card the GM fills in, instead of one card per wand. Spell scrolls
merge into wands (a scroll is a wand with 1 charge). Anyone can use a wand: no proficiency
and no Arcana check (book: DC 10 + tier without wand proficiency). Its charges come back
after a Safe Rest (book: a recharge ritual per wand). Its level (twice the tier) keeps
powerful wands out of low-level hands.
*/
