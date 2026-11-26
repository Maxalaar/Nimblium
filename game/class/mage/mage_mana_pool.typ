#import "/global.typ": *

#let mechanic_data = (
    name: "Mage Mana Pool",
    type: (
        "Mechanic",
        "Mage",
    ),
    description: [
      Your mana pool's maximum is #times(INT, 3)+#LVL. It recharges on a #safe_rest.
    ],
    levels: [
      *Level 2:* You can cast spells up to tier 1.\
      *Level 4:* You can cast spells up to tier 2.\
      *Level 6:* You can cast spells up to tier 3.\
      *Level 8:* You can cast spells up to tier 4.\
      *Level 10:* You can cast spells up to tier 5.\
      *Level 12:* You can cast spells up to tier 6.\
      *Level 14:* You can cast spells up to tier 7.\
      *Level 16:* You can cast spells up to tier 8.\
      *Level 18:* You can cast spells up to tier 9.
    ],
)

#let mage_mana_pool = creat_mechanic(mechanic_data)

/*
review: style=2026-11-14 changelog=2026-10-02
*/
