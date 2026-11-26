#import "/game/terms.typ": *

// Armor and shield blocks, shared by their cards (Core Rules p.33, rearranged by level:
// house rule). Written in full on the card: no reminder needed.
// The card's Levels field: `levels: armor_levels((6, 9, 12, 15))`, the bonus at levels 1, 5,
// 10 and 15; the card's DEF shows a dash.
#let armor_levels(ups) = [*Level 1:* +#ups.at(0) #defense.\
  *Level 5:* +#ups.at(1) #defense.\
  *Level 10:* +#ups.at(2) #defense.\
  *Level 15:* +#ups.at(3) #defense.]
#let armor_bonus = (kind: "passive", effect: [While you wear it, add the bonus shown in Levels to your #defense. You can wear only 1 armor at a time.])
#let shield_bonus = (kind: "passive", effect: [While you hold it, add the bonus shown in Levels to your #defense. Only 1 shield adds to it.])

// Mail: DEX counts, up to a limit. Plate: DEX doesn't count.
#let armor_max_dex(n) = (kind: "passive", name: "Stiff", effect: [While you wear it, your #DEX adds at most #n to your #defense.])
#let armor_no_dex = (kind: "passive", name: "Rigid", effect: [While you wear it, your #DEX doesn't add to your #defense.])
// The book's "Req. n STR".
#let armor_heavy(n) = (kind: "passive", name: "Heavy", effect: [You need at least #n #STR to wear it.])
