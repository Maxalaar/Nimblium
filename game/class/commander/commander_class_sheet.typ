#import "/global.typ": *
#import "/templates/class_sheet.typ": class_sheet, minor, by_level, locked

#let stat_up(body) = minor[#body]
#let n = none

#class_sheet(
  name: "Commander",
  icon: "commander.svg",
  intro: [Soldier… Warrior… Fearless Leader.],
  difficulty: 2,
  description: [A battlefield leader who turns a group of heroes into an army. The Commander fights in the front line, but their real strength is in the orders they shout and the allies they push forward. You win by making everyone around you better, and you are at your best when the whole party fights as one.],
  info: (
    ("Key stats", [#STR, #INT]),
    ("Hit die", [d10]),
    ("Armor", [Cloth, leather, mail, shields]),
  ),
  every_level: [+7 #HP, +1 Hit Die, +1 skill point.],
  levels: (
    (n, [#card_ref("Coordinated Strike!").]),
    (n, [#card_ref("Combat Dice"). Choose 1 Combat Tactic. #card_ref("Field Medic").]),
    (n, [Choose a subclass, Champion of the Bulwark, Champion of the Vanguard or Spellblade.]),
    (n, [Choose 2 Commander's Orders. #stat_up[+1 #STR or #INT.]]),
    (n, [#stat_up[+1 #DEX or #WIL.]]),
    (n, [Choose 1 more Combat Tactic, or gain 1 more Combat Die. #card_ref("Weapon Mastery"). Choose 1 mastery.]),
    (n, [Subclass feature.]),
    (n, [Choose 1 more Combat Tactic, or gain 1 more Combat Die. #stat_up[+1 #STR or #INT.]]),
    (n, [#stat_up[+1 #DEX or #WIL.]]),
    (n, [Choose 1 more Combat Tactic, or gain 1 more Combat Die. Choose 1 more mastery.]),
    (n, [Subclass feature.]),
    (n, [Choose 1 more Combat Tactic, or gain 1 more Combat Die. #stat_up[+1 #STR or #INT.]]),
    (n, [#stat_up[+1 #DEX or #WIL.]]),
    (n, [All 3 masteries.]),
    (n, [Subclass feature.]),
    (n, [Choose 1 more Combat Tactic, or gain 1 more Combat Die. #stat_up[+1 #STR or #INT.]]),
    (n, [#stat_up[+1 #DEX or #WIL.]]),
    (n, []),
    (n, [Epic Boon.]),
    (n, [#stat_up[+1 to any 2 stats.]]),
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
    (locked[Spellblade], by_level(
      (3, [#card_ref("Arcane Command"), #card_ref("Spellforge"), and the Arcane Order of each Commander's Order you know. A spell of tier 1 or lower and a Utility Spell.]),
      (7, [A spell of tier 2 or lower and a Utility Spell.]),
      (11, [A spell of tier 3 or lower and a Utility Spell.]),
      (15, [A spell of tier 4 or lower and a Utility Spell.]),
    )),
    ([Options], [
      #text(size: 7.5pt, weight: "bold")[COMMANDER'S ORDERS]\
      #card_ref("Commanding Presence"), #card_ref("Face Me!"), #card_ref("Hold the Line!"), #card_ref("I Can Do This ALL DAY!"), #card_ref("Move it! Move it!"), #card_ref("Reposition!").

      #text(size: 7.5pt, weight: "bold")[ARCANE ORDERS (SPELLBLADE)]\
      #card_ref("Glimmering Decree"), #card_ref("Borne upon the Wind"), #card_ref("Crystalline Armor"), #card_ref("Flashstep"), #card_ref("Rising Phoenix"), #card_ref("Withering Presence").

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
