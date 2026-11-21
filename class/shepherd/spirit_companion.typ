#import "../../global.typ": *

#let creature_data = (
    name: "Spirit Companion",
    type: ("Creature", "Spirit", "Shepherd"),
    blocks: (
        (kind: "passive", name: "Bound Spirit", effect: [This creature has no actions of its own. Its controller spends their own actions to use its abilities.]),
        (kind: "active", cost: (actions(1),), name: "Ethereal Strike", damage: [Die+#WIL radiant], effect: [This attack ignores #defense.]),
        (kind: "active", cost: (actions(1),), limitation: per_safe_rest(WIL), name: "Ethereal Mending", effect: [It heals another adjacent creature for its Die+#WIL #HP.]),
    ),
    hit_points: "Tier × 10",
)

#let spirit_companion = creat_creature(creature_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: The Spirit Companion departs from the book. It has an HP pool of Tier × 10
and acts on creatures in contact instead of within Reach 4. It is a creature like any
other: it can take damage and disappears at 0 HP. Decided on 2026-11-06. The 2026-10-02
changelog version is not applied: see class/shepherd/mod.typ.

house-rule: Healing no longer costs the companion 10 HP: Ethereal Mending is limited to
WIL uses per Safe Rest instead, like the changelog's Mend (WIL/Safe Rest). Its heal stays
Die+WIL to an adjacent creature. Decided on 2026-11-21.

Its Die (by tier) and the 100-space bond are on lifebinding_spirit.typ, to free space here.
*/
