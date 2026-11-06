#import "../../global.typ": *

#let ability_data = (
    name: "Hunter's Mark",
    type: (
        "Ability",
        "Hunter",
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(1),),
        effect: [
            A creature you can see is #kw_marked for 1 day or until you make another creature #kw_marked.
          ],
      ),
      (
        kind: "passive",
        effect: [
            A #kw_marked creature is never hidden from you.
          ],
      ),
      (
        kind: "passive",
        effect: [
            When you attack a #kw_marked creature, choose before each attack: you gain advantage on the roll or +#LVL damage.
          ],
      ),
    ),
    reminder: (hunter_keywords.marked,),
)

#let hunter_mark = creat_ability(ability_data)