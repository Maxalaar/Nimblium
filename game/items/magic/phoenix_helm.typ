#import "/global.typ": *

#let item_data = (
    name: "Phoenix Helm",
    type: ("Item", "Magic"),
    level: 15,
    charges: 1,
    slots: 1,
    blocks: (
      (kind: "active", cost: (charge_cost(1),), effect: [When you would die while wearing it, you don't. You take the #card_ref("Phoenix Form") for 10 minutes, and each enemy within 6 spaces makes a #DEX check against #dc(10, stat: KEY). If it fails, it takes #LVL d10 fire damage. If it succeeds, it takes half.]),
    ),
)

#let phoenix_helm = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.41 and Game Master's Guide p.19 (legendary).

house-rule: Rarity becomes a level (Legendary: LVL 15); a magic item counts toward the magic
items you can carry (Adventure page, Items).
house-rule: No item is destroyed: the helm has 1 charge, back after a Safe Rest (book: the helm
is no more).

interpretation: "You return with 0 HP and all but 1 Wound" means one Wound short of death: 5 Wounds.
*/
