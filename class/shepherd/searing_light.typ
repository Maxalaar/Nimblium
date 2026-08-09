#import "../../global.typ": *

#let ability_data = (
    name: "Searing Light",
    type: (
        "Ability",
        "Shepherd",
    ),
    blocks: (
      (
        kind: "active",
        cost: ("1 Action",),
        limitation: "WIL/Safe Rest",
        effect: [
            Heal WIL d8 HP to a #keyword_style[Dying] creature within Reach 6.\
            Or inflict WIL d8 radiant damage to an undead or #keyword_style[Bloodied] enemy within Reach 6.
          ],
      ),
    ),
    reminder: (conditions.dying, conditions.bloodied),
)

#let searing_light = creat_ability(ability_data)
