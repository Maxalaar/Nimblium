#import "../../global.typ": *

#let mechanic_data = (
    name: "Shepherd Mana Pool’s",
    type: (
        "Mechanic",
        "Shepherd",
    ),
    description: [
      Your mana pool's maximum is equal to (WIL$times$3)+LVL and recharges on a Safe Rest.\
      \
      *Level 2:* Unlock tier 1 spells. You may now cast tier 1 spells and upcast spells at tier 1.\
      *Level 4:* Unlock tier 2 spells.\
      *Level 6:* Unlock tier 3 spells.\
      *Level 8:* Unlock tier 4 spells.\
      *Level 10:* Unlock tier 5 spells.\
      *Level 12:* Unlock tier 6 spells.\
      *Level 14:* Unlock tier 7 spells.\
      *Level 16:* Unlock tier 8 spells.\
      *Level 18:* Unlock tier 9 spells.
    ],
)

#let shepherd_mana_pool = creat_mechanic(mechanic_data)
