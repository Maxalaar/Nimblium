#import "/global.typ": *

#let ability_data = (
    name: "Unstoppable Protector",
    type: ("Ability", "Oathsworn", "Sacred Decree"),
    blocks: (
      (kind: "passive", effect: [Your #speed increases by 2.]),
      (kind: "passive", effect: [Nothing can stop you from using #kw_interpose for an ally within your #kw_aura. When you #kw_interpose for an NPC who isn't fighting, you may #kw_interpose again this round.]),
    ),
    reminder: (keywords.aura, keywords.interpose,),
)

#let unstoppable_protector = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: +2 speed (was +1), and "Nothing can stop you from Interposing for an ally within your
aura" (was: even if restrained, stunned or incapacitated). The NPC part is unchanged.
*/
