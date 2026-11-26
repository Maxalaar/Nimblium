#import "/global.typ": *

#let ability_data = (
    name: "Beast of the Pack",
    type: ("Ability", "Stormshifter", "Direbeast Form"),
    blocks: (
      (kind: "passive", name: "Pack Beast", effect: [You are Medium. Your #speed increases by #DEX. On each of your turns, you may move #DEX spaces for free. You have #kw_advantage on #DEX checks.]),
      (kind: "active", cost: (mana(1),), limitation: per_turn(1), name: "Lightning Step", effect: [Teleport up to #DEX spaces.]),
      (kind: "active", cost: (actions(1),), name: "Frenzy", damage: [1d6+#LVL], effect: [Each Frenzy after the first in a row has 1 more #kw_advantage, instead of the #kw_disadvantage of Rushed attacks. The count starts over after a critical hit, or when you make another attack.]),
    ),
)

#let beast_of_the_pack = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Level 2 (was 3). Rebuilt: +DEX speed, DEX spaces of free movement each turn,
advantage on DEX saves (written as DEX checks), Lightning Step and Frenzy. Thunderfang and
Supercharge are removed.

interpretation: The changelog's "your next attack gets increasing advantage instead of
disadvantage; this resets on a crit or after using a different attack" is read as each
Frenzy in a row gaining 1 more advantage.
*/
