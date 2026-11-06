#import "../../../global.typ": *

#let ability_data = (
    name: "Multishot",
    type: (
        "Ability",
        "Hunter",
        "Thrill of the hunt"
    ),
    blocks: (
      (
        kind: "active",
        cost: ("1 Action", "1 TotH charge"),
        effect: [Attack a #keyword_style[Marked] creature at half range with a ranged weapon. Choose a second target within 2 spaces of the first, they take the same amount of damage.],
      ),
    ),
    reminder: (hunter_keywords.marked,),
)

#let multishot = creat_ability(ability_data)
