#import "../../global.typ": *

#let creature_data = (
    name: "Spirit Companion",
    type: ("Creature", "Spirit"),
    blocks: (
        (kind: "passive", name: "Bound Spirit", effect: [This creature has no actions of its own. Its controller spends their own actions to use its abilities.]),
        (kind: "passive", name: "Spirit Bond", effect: [If this creature is more than 100 spaces from its controller, it disappears.]),
        (kind: "passive", name: "Ethereal Power", effect: [Its Die is 1d6 at tier 1, 1d8 at tier 2, 1d10 at tier 3 and 1d12 at tier 4 or higher, depending on the tier of the spell that summoned it.]),
        (kind: "active", cost: (actions(1),), name: "Ethereal Strike", effect: [It attacks an adjacent creature, dealing its Die+#WIL radiant damage, ignoring #defense.]),
        (kind: "active", cost: (actions(1), [10 #HP]), name: "Ethereal Mending", effect: [It heals another adjacent creature for its Die+#WIL #HP.]),
    ),
    hit_points: "Tier × 10",
)

#let spirit_companion = creat_creature(creature_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: The Spirit Companion departs from the book. It has an HP pool of Tier × 10
instead of healing charges, each heal costs it 10 HP, and it acts on creatures in contact
instead of within Reach 4. It is a creature like any other: it can take damage and
disappears at 0 HP. Decided on 2026-11-06. The 2026-10-02 changelog version is not applied:
see class/shepherd/mod.typ.
*/
