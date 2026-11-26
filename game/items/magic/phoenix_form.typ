#import "/global.typ": *

#let ability_data = (
    name: "Phoenix Form",
    type: ("Ability", "Magic"),
    blocks: (
      (kind: "passive", effect: [You are #kw_flying with a #speed of 10, your #defense is 10, and you have #times(10, LVL) #HP instead of yours.]),
      (kind: "passive", effect: [A creature that touches you takes #LVL fire damage.]),
      (kind: "passive", effect: [After 10 minutes, the form ends. You then have 0 #HP and 5 Wounds.]),
      (kind: "active", name: "Fiery Talons", cost: (actions(1),), damage: [1d10+#LVL]),
    ),
    reminder: (keywords.flying,),
)

#let phoenix_form = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Game Master's Guide p.19 (Phoenix Helm: fly speed 10, 10 Armor, 10×LVL HP, LVL fire
damage to those who touch you, Fiery Talons 1 Action 1d10+LVL; after 10 minutes, 0 HP and all
but 1 Wound).

interpretation: The form the Phoenix Helm gives, as a separate card (like Dragon Form). "All
but 1 Wound" means one Wound short of death: 5 Wounds.
*/
