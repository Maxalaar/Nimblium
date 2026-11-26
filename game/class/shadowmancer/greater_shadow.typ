#import "/global.typ": *

#let creature_data = (
    name: "Greater Shadow",
    type: ("Creature", "Shadow", "Minion", "Shadowmancer"),
    blocks: (
        passive_abilities.minion,
        (kind: "passive", name: "Faithless", effect: [This creature abandons its summoner as soon as combat ends.]),
        (kind: "passive", name: "Burst of Shadows", effect: [When this creature dies, it explodes into 5 #card_ref("Shadow", "Shadows"). Place them anywhere within 8 spaces of it. They ignore your #card_ref("Shadow") limit.]),
        (kind: "active", cost: (actions(1),), name: "Shadow Claw", damage: "5d12 necrotic"),
    ),
)

#let greater_shadow = creat_creature(creature_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Greater Shadow is no longer a tier 4 spell. It is summoned by Summon Shadow at level 20 (the old Eldritch Usurper)
(level 20): a 5d12 minion that explodes into 5 Shadows when it dies.

interpretation: The changelog does not say whether the 5 Shadows count toward your Shadow
limit. They ignore it, otherwise the explosion would often do nothing at level 20.
*/
