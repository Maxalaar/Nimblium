#import "/global.typ": *

#let mechanic_data = (
    name: "Oathsworn Mana Pool",
    type: ("Mechanic", "Oathsworn"),
    description: [
      Your mana pool's maximum is #WIL+#LVL. It recharges on a #safe_rest.
    ],
)

#let oathsworn_mana_pool = creat_mechanic(mechanic_data)

/*
review: style=2026-11-14 changelog=2026-10-02

The highest spell tier by level is on the class sheet (oathsworn_class_sheet.typ).
*/
