#import "/global.typ": *

#let item_data = (
    name: "Resolute Fangs, Golden Bastion",
    type: ("Item", "Magic"),
    level: 15,
    slots: 1,
    blocks: (
      (kind: "passive", effect: [It is your #card_ref("Shield"), and its bonus is 2 higher.]),
      (kind: "passive", effect: [When you Defend against a melee attack while holding it, the attacker is #kw_grappled by the shield, whatever its size. It escapes against #dc(20). The shield holds 1 creature at a time.]),
      (kind: "active", cost: (actions(1),), effect: [The shield becomes fixed in place, and nothing can move it until you use this action again.]),
    ),
    reminder: (conditions.grappled,),
)

#let golden_bastion = creat_item(item_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.40 (legendary shield, +8 Armor) and the 2026-10-02 changelog (its grapple triggers whenever you reduce melee damage with it).

house-rule: Rarity becomes a level (Legendary: LVL 15); a magic item counts toward the magic
items you can carry (Adventure page, Items).
house-rule: Shields grow with your level: this one adds 2 to the Shield card's bonus (book: +8).
*/
