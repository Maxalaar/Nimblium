#import "../../global.typ": *

#let ability_data = (
    name: "Hunter’s Mark",
    type: (
        "Ability",
        "Hunter",
    ),
    blocks: (
      (
        kind: "active",
        cost: ("1 Action",),
        effect: [
            A creature you can see is marked as your quarry for 1 day or until you mark another creature.
          ],
      ),
      (
        kind: "passive",
        effect: [
            A creature marked as your quarry is never hidden from you.
          ],
      ),
      (
        kind: "passive",
        effect: [
            When you attack a creature marked as your quarry, choose before each attack: you gain advantage on the roll or +LVL damage.
          ],
      ),
    ),
)

#let hunter_mark = creat_ability(ability_data)