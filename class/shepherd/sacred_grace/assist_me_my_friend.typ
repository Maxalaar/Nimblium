#import "../../../global.typ": *

#let ability_data = (
    name: "Assist Me, My Friend!",
    type: (
        "Ability",
        "Shepherd",
        "Sacred Grace",
    ),
    blocks: (
      (
        kind: "passive",
        limitation: per_round(1),
        effect: [On your melee attack, if your Spirit Companion is within 6 spaces of the target, it also attacks the target, even if not in contact.]),
    ),
)

#let assist_me_my_friend = creat_ability(ability_data)

/*
house-rule: Adapted to the house-rule Spirit Companion: it attacks the target itself from
within 6 spaces, instead of adding its damage to your attack.
*/
