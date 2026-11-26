#import "/global.typ": *
#import "/templates/class_sheet.typ": class_sheet, minor, by_level

#let stat_up(body) = minor[#body]
#let n = none

#class_sheet(
  name: "Commander",
  icon: "commander.svg",
  intro: [Soldier… Warrior… Fearless Leader.],
  info: (
    ("Key stats", [#STR, #INT]),
    ("Hit die", [d10, +7 #HP per level]),
    ("Armor", [Mail, shields]),
  ),
  levels: (
    (n, [#card_ref("Coordinated Strike!").]),
    (n, [#card_ref("Combat Dice"). Choose 1 Combat Tactic. #card_ref("Field Medic").]),
    (n, [Choose a subclass, Champion of the Bulwark or Champion of the Vanguard.]),
    (n, [Choose 2 Commander's Orders. #stat_up[+1 #STR or #INT.]]),
    (n, [#card_ref("Master Commander"). #card_ref("Combat Dice") become d8. #stat_up[+1 #DEX or #WIL.]]),
    (n, [Choose 1 more Combat Tactic, or gain 1 more Combat Die. #card_ref("Weapon Mastery"). Choose 1 mastery.]),
    (n, [Subclass feature.]),
    (n, [Choose 1 more Combat Tactic, or gain 1 more Combat Die. #stat_up[+1 #STR or #INT.]]),
    (n, [#card_ref("Coordinated Strike!") +1 use per #safe_rest. #card_ref("Combat Dice") become d10. #stat_up[+1 #DEX or #WIL.]]),
    (n, [Choose 1 more Combat Tactic, or gain 1 more Combat Die. Choose 1 more mastery.]),
    (n, [Subclass feature.]),
    (n, [Choose 1 more Combat Tactic, or gain 1 more Combat Die. #stat_up[+1 #STR or #INT.]]),
    (n, [#card_ref("Coordinated Strike!") +1 use per #safe_rest. #card_ref("Combat Dice") become d12. #stat_up[+1 #DEX or #WIL.]]),
    (n, [All 3 masteries.]),
    (n, [Subclass feature.]),
    (n, [Choose 1 more Combat Tactic, or gain 1 more Combat Die. #stat_up[+1 #STR or #INT.]]),
    (n, [#card_ref("Coordinated Strike!") +1 use per #safe_rest. #card_ref("Combat Dice") become d20. #stat_up[+1 #DEX or #WIL.]]),
    (n, [#card_ref("Unparalleled Tactics").]),
    (n, [Epic Boon.]),
    (n, [#card_ref("Captain of Legions"). #stat_up[+1 to any 2 stats.]]),
  ),
  boxes: (
    ([Champion of the Bulwark], by_level(
      (3, [#card_ref("Armor Master"), #card_ref("Shield Expert").]),
      (7, card_ref("Juggernaut")),
      (11, card_ref("Taunting Strike")),
      (15, card_ref("Shield Wall")),
    )),
    ([Champion of the Vanguard], by_level(
      (3, card_ref("Advance!")),
      (7, card_ref("Experienced Commander")),
      (11, card_ref("Survey the Battlefield")),
      (15, card_ref("As One!")),
    )),
    ([Options], [
      #text(size: 7.5pt, weight: "bold")[COMMANDER'S ORDERS]\
      #card_ref("Commanding Presence"), #card_ref("Face Me!"), #card_ref("Hold the Line!"), #card_ref("I Can Do This ALL DAY!"), #card_ref("Move it! Move it!"), #card_ref("Reposition!").

      #text(size: 7.5pt, weight: "bold")[COMBAT TACTICS]\
      #card_ref("Heavy Strike"), #card_ref("Inerrant Strike"), #card_ref("Lunging Strike"), #card_ref("Sweeping Strike").

      #text(size: 7.5pt, weight: "bold")[WEAPON MASTERIES]\
      #card_ref("Bludgeoning Mastery"), #card_ref("Piercing Mastery"), #card_ref("Slashing Mastery").
    ]),
  ),
)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.19-23 and the 2026-10-02 changelog: Fit for Any Battlefield (Combat Dice,
Combat Tactics) moved to level 2 and Commander's Orders to level 4; the Combat Dice upgrades
come with Master Commander at levels 5, 9, 13 and 17. Master Commander (2), (3) and (4) keep
the book's +1 use of Coordinated Strike per Safe Rest. Rigorous Training (change your choices
on a Safe Rest) is not used: global house rule in guides/house_rules.txt.
*/
