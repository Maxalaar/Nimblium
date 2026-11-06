#import "../../global.typ": *

#let creature_data = (
    name: "Spirit Companion",
    type: (
        "Creature",
        "Spirit",
    ),
    passive: (
        [*Spirit Bond:* If this creature is more than 100 spaces from its controller, it disappears.],
        [*Ethereal Power:* Its Die depends on the tier the summoning spell was cast at: 1d6 (tier 1), 1d8 (tier 2), 1d10 (tier 3), 1d12 (tier 4 or higher).],
    ),
    active: (
        [*Ethereal Strike:* Its controller spends 1 action. It attacks a creature in contact, dealing its Die+#WIL radiant damage, ignoring armor.],
        [*Ethereal Mending:* Its controller spends 1 action and 10 #HP from this creature: it heals another creature in contact for its Die+#WIL #HP.],
    ),
    hit_points: "Tier × 10",
)

#let spirit_companion = creat_creature(creature_data)
