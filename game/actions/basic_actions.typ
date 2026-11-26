#import "/global.typ": *

#let ability_data = (
    name: "Basic Actions",
    type: (
        "Ability",
        "Combat",
    ),
    blocks: (
      (
        kind: "active",
        name: "Move",
        cost: (actions(1),),
        effect: [Move up to your #speed. You may split this move around your other actions.],
      ),
      (
        kind: "active",
        name: "Attack",
        cost: (actions(1),),
        effect: [Make an attack with a weapon you hold. The Attack section of the Combat page explains how an attack resolves.],
      ),
      (
        kind: "active",
        name: "Hide",
        cost: (actions(1),),
        effect: [You #kw_hide from the creatures you have #kw_cover from.],
      ),
      (
        kind: "active",
        name: "Equip",
        cost: (actions(1),),
        effect: [Put away a weapon or shield you hold.],
      ),
    ),
    reminder: (keywords.difficult_terrain, keywords.hide, keywords.cover),
)

#let basic_actions = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.10 and p.13 (Move, Attack, Hide).

house-rule: Equip costs 1 action to put away a weapon or shield; taking one in a free hand
and dropping an item are free (Combat page, Weapons), so throwing weapons stay usable (book: swap a weapon you are
proficient with for free, 1/round).

house-rule: Hiding needs no roll (game/keywords.typ). Simple free tasks (opening a door) are left to the GM, without a card block. The rules that apply to every attack (Primary Die, critical hits, rushed attacks) and to
every move (Difficult Terrain, occupied spaces) stay on the Combat rules page.
*/
