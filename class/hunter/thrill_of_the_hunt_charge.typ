#import "../../global.typ": *

#let mechanic_data = (
    name: "Thrill of the Hunt Charge",
    type: (
        "Mechanic",
        "Hunter",
    ),
    description:[
      \
      Gain a #thrill_of_the_hunt (#TotH) charge during that encounter whenever:\
      • You hit a #kw_marked creature in melee.\
      • You crit a #kw_marked creature at range.\
      • A #kw_marked creature dies.\
      Unused charges are lost when combat ends.\
      #thrill_of_the_hunt abilities cannot miss.\
      Abilities that spend charges cannot generate new ones.
    ],
    reminder: (hunter_keywords.marked,),
)

#let thrill_of_the_hunt_charge = creat_mechanic(mechanic_data)