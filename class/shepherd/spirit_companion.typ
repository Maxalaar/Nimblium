#import "../../global.typ": *

#let creature_data = (
    name: "Spirit Companion",
    type: ("Creature", "Spirit"),
    blocks: (
        (kind: "passive", name: "Bound Spirit", effect: [This creature has no actions of its own. Its controller spends their own actions to use its abilities.]),
        (kind: "passive", name: "Spirit Bond", effect: [If this creature is more than 100 spaces from its controller, it disappears.]),
        (kind: "passive", name: "Ethereal Power", effect: [Its Die depends on the tier the summoning spell was cast at: 1d6 (tier 1), 1d8 (tier 2), 1d10 (tier 3), 1d12 (tier 4 or higher).]),
        (kind: "active", cost: (actions(1),), name: "Ethereal Strike", effect: [It attacks a creature in contact, dealing its Die+#WIL radiant damage, ignoring #defense.]),
        (kind: "active", cost: (actions(1), [10 #HP]), name: "Ethereal Mending", effect: [It heals another creature in contact for its Die+#WIL #HP.]),
    ),
    hit_points: "Tier × 10",
)

#let spirit_companion = creat_creature(creature_data)

/*
house-rule: The Spirit Companion departs from the book. It has an HP pool of Tier × 10
instead of healing charges, each heal costs it 10 HP, and it acts on creatures in contact
instead of within Reach 4. It is a creature like any other: it can take damage and
disappears at 0 HP. Decided on 2026-11-06.
*/
