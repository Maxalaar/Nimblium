#import "/global.typ": *

#let ability_data = (
    name: "Commanding Presence",
    type: ("Ability", "Commander", "Commander's Order"),
    blocks: (
      (kind: "active", cost: (actions(1),), limitation: per_encounter(1), effect: [Shout an order at an enemy that can hear you and make an Influence check. On 9 or less, it moves up to its #speed where you choose. On 10 to 19, it falls #kw_prone. On 20 or more, it makes an attack against a creature of your choice.]),
    ),
    reminder: (conditions.prone,),
)

#let commanding_presence = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Was a Combat Tactic (a 2-word command on a failed WIL save, DC 10+STR). Now a
Commander's Order: "(1/encounter) Make an Influence check: 1-9 Move!, 10-19 Kneel!, 20+
Strike!"

interpretation: The changelog gives only the three words. Move! is read as the enemy
moving up to its speed where you choose, Kneel! as falling Prone, Strike! as attacking a
creature of your choice. The 1 Action cost comes from the book.
*/
