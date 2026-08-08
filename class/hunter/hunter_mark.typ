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
            A creature you can see is #keyword_style[marked] for 1 day or until you mark another creature.
          ],
      ),
      (
        kind: "passive",
        effect: [
            A creature #keyword_style[marked] is never hidden from you.
          ],
      ),
      (
        kind: "passive",
        effect: [
            When you attack a creature #keyword_style[marked], choose before each attack: you gain advantage on the roll or +LVL damage.
          ],
      ),
    ),
    reminder: (hunter_keywords.marked,),
)

#let hunter_mark = creat_ability(ability_data)