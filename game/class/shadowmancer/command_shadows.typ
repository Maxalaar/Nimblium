#import "/global.typ": *

#let spell_data = (
    name: "Command Shadows",
    type: ("Spell", "Necrotic", "Cantrip", "Shadowmancer"),
    cost: (actions(1),),
    effect: [Cast this spell only once per round. All your #card_ref("Shadow", "Shadows") move up to 6 spaces, then attack.],
)

#let command_shadows = creat_spell(spell_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: New cantrip, split from Summon Shadows. "ALL your Shadows move 6 then attack
(1/round)."
*/
