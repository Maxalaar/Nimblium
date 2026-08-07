#import "../../../global.typ": *

#let ability_data = (
    name: "Vital Shot",
    type: (
        "Ability",
        "Hunter",
        "Thrill of the hunt"
    ),
    blocks: (
      (
        kind: "active",
        cost: ("1 Action", "1 TotH charge"),
        effect: [Attack your quarry at half range. If your quarry is #keyword_style[Hampered], your ranged attacks ignore their armor. If they are unarmored, double your Hunter's Mark bonus damage.],
      ),
    ),
    reminder: (conditions.hampered,),
)

#let vital_shot = creat_ability(ability_data)
