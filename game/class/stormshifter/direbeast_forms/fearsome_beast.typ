#import "/global.typ": *

#let ability_data = (
    name: "Fearsome Beast",
    type: ("Ability", "Stormshifter", "Direbeast Form"),
    blocks: (
      (kind: "passive", name: "Large Beast", effect: [You are Large. Your #defense increases by #WIL. You gain #WIL+#LVL temp #HP, which last until the form ends. You have #kw_advantage on #STR checks.]),
      (kind: "active", cost: (actions(1),), name: "Gore", damage: [1d8+#LVL], effect: [Whenever this attack hits, you gain #LVL temp #HP.]),
      (kind: "active", cost: (mana(1),), name: "Fearsome", effect: [When you Defend or #kw_interpose, you may make the attacker reroll its attack. You choose which result is kept.]),
    ),
    reminder: (keywords.interpose,),
)

#let fearsome_beast = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Level 1 (was 2). WIL Defense and WIL+LVL temp HP (was DEX+LVL temp HP), advantage
on STR saves (written as STR checks: there are no saves), Gore 1d8+LVL (was 1d6+LVL).
*/
