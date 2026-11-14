// review: style=2026-11-14 changelog=2026-10-02
#import "../../../../global.typ": *

#let ability_data = (
    name: "Chaos Lash",
    type: (
        "Ability",
        "Mage",
        "Invoker of Chaos",
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(1),),
        limitation: per_encounter(1),
        effect: [When an enemy moves adjacent to you, it suffers #kw_knockback 2. It must succeed on a #WIL save or fall #kw_prone. Then #kw_invoke_chaos.],
      ),
    ),
    reminder: (keywords.knockback, conditions.prone, mage_keywords.invoke_chaos),
)

#let chaos_lash = creat_ability(ability_data)
