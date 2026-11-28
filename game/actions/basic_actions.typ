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
        effect: [Choose a creature within the Reach or Range of a weapon you hold. Roll the weapon's damage and deal it to that creature. Its #kw_primary_die can miss or crit.],
      ),
      (
        kind: "active",
        name: "Hide",
        cost: (actions(1),),
        effect: [You #kw_hide from the creatures you have #kw_cover from.],
      ),
    ),
    reminder: (keywords.primary_die, keywords.difficult_terrain, keywords.hide, keywords.cover),
)

#let basic_actions = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.10 and p.13 (Move, Attack, Hide).

house-rule: Hiding needs no roll (game/keywords.typ). Simple free tasks (opening a door) are left to the GM, without a card block. The rules that apply to every attack (Primary Die, critical hits, rushed attacks) and to
every move (Difficult Terrain, occupied spaces) stay on the Combat rules page.
*/
