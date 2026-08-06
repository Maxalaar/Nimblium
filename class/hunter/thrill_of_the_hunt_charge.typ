#import "../../global.typ": *

#let mechanic_data = (
    name: "Thrill of the Hunt Charge",
    type: (
        "Mechanic",
        "Hunter",
    ),
    description:[
      \
      Gain a Thrill of the Hunt (TotH) charge during that encounter whenever:\
      • You hit your quarry in melee.\
      • You crit your quarry at range.\
      • Your quarry dies.\
      Unused charges are lost when combat ends.
    ],
)

#let thrill_of_the_hunt_charge = creat_mechanic(mechanic_data)