#import "/global.typ": *
#import "/game/class/songweaver/songweaver_keywords.typ": old_friend

#let creature_data = (
    name: "Mal, the Malevolent Imp",
    type: ("Creature", "Songweaver", "Friend"),
    blocks: (
        old_friend,
        passive_abilities.flying,
        (kind: "narrative", name: "Spy", effect: [This creature has +5 Stealth and +5 Perception. Outside combat, it does what its controller asks.]),
    ),
    reminder: (keywords.flying,),
    hit_points: [#LVL+5],
    size: "Tiny",
    dex: 3,
    int: 2,
)

#let mal_the_malevolent_imp = creat_creature(creature_data)

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: A creature that follows the Songweaver instead of being summoned with a song
(user ruling 2026-11-26): a flying spy with LVL+5 HP, DEX +3, INT +2, +5 Stealth and +5
Perception, who does what its controller asks. The book summons him for 1 night to find out
dangerous information or take care of a problem, after an Influence check to convince him.

interpretation: +5 Stealth and +5 Perception are skill values: a check adds the stat, so Mal
rolls +8 Stealth with DEX +3 (user ruling 2026-11-28, stat and skill points).
*/
