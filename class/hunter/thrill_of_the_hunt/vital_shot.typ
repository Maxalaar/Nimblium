#import "../../../global.typ": *

#let ability_data = (
    name: "Vital Shot",
    type: (
        "Ability",
        "Hunter",
        thrill_of_the_hunt
    ),
    blocks: (
      (
        kind: "active",
        cost: (actions(1), toth_charges(1)),
        effect: [Attack a #kw_marked creature at half range. If it is #kw_hampered, your ranged attacks ignore its #defense. If it has no #defense, double your Hunter's Mark bonus damage.],
      ),
    ),
    reminder: (hunter_keywords.marked, conditions.hampered,),
)

#let vital_shot = creat_ability(ability_data)
