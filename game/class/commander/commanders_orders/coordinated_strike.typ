#import "/global.typ": *

#let ability_data = (
    name: "Coordinated Strike!",
    type: ("Ability", "Commander", "Commander's Order"),
    blocks: (
      (kind: "active", limitation: per_encounter(1), effect: [You and an ally within 6 spaces each make a weapon attack or an unarmed attack, or cast a cantrip, for free. You can use it only once per round.]),
    ),
    levels: [
      *Level 5:* You have #INT more uses per #safe_rest. Its attacks ignore all #kw_disadvantage.\
      *Level 9:* #INT+1 more uses per #safe_rest.\
      *Level 13:* #INT+2 more uses per #safe_rest.\
      *Level 17:* #INT+3 more uses per #safe_rest.\
      *Level 18:* Once per encounter, when you use it, an ally within 18 spaces gains 1 action on its next turn.\
      *Level 20:* That gives 1 action to up to #INT allies within 18 spaces.
    ],
    reminder: (keywords.disadvantage,),
)

#let coordinated_strike = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: 1/encounter at level 1 (was 1/round, INT times per Safe Rest); now allows an
unarmed attack. Master Commander (level 5: INT uses per Safe Rest, +1 at 9, 13 and 17, attacks
ignore disadvantage), Unparalleled Tactics (level 18) and Captain of Legions (level 20: "INT
allies gain +1 action", was every ally within 12 spaces) are its Levels lines.
*/
