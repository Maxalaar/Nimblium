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
        limitation: "1/round",
        effect: [On your melee attack, if your Spirit Companion is within 6 spaces of the target, it also attacks the target, even if not in contact.]),
    ),
)

#let assist_me_my_friend = creat_ability(ability_data)
