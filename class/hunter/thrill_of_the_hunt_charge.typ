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
      • You hit a #keyword_style[Marked] creature in melee.\
      • You crit a #keyword_style[Marked] creature at range.\
      • A #keyword_style[Marked] creature dies.\
      Unused charges are lost when combat ends.
    ],
    reminder: (hunter_keywords.marked,),
)

#let thrill_of_the_hunt_charge = creat_mechanic(mechanic_data)