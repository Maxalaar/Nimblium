#import "/global.typ": *
#import "/templates/hero_sheet.typ": hero_sheet

#hero_sheet(
  stats: (
    (STR, ("Might",)),
    (DEX, ("Finesse", "Stealth")),
    (INT, ("Arcana", "Examination", "Lore")),
    (WIL, ("Influence", "Insight", "Naturecraft", "Perception")),
  ),
)

/*
Source: Core Rules p.19-21 (The Character Sheet) and the official sheets in
sources/NimbleCharacterSheets/. The values and their formulas follow the Adventure page
(game/rules/adventure.typ, Making a hero). The PDF is fillable: tools/fillable_pdf.py adds the
form fields.

house-rule: No Hit Dice and no saves, so the sheet has neither (Adventure page). Height and
weight are left out (role-play). Vitality has its own box, and each level has a row for what was
chosen, since choices never change (guides/house_rules.txt).

house-rule: Stat and skill points (user ruling 2026-11-28): stats and skills start at 0, and
each skill row has two boxes, the skill's own value and the total rolled (stat + skill), in two
boxes that look the same. The stat and skill points not spent yet sit above the skill tables ("Points to
spend"); the points already spent are not tracked (user ruling 2026-11-28).

interpretation: Abilities, spells and items are cards. The sheet lists the items carried (with
their slots) and the armor and shield worn, but not abilities or spells. Combat values (HP,
Defense, Wounds, resources) are grouped apart from the rest (user request 2026-11-28), and two
resource boxes leave room for classes with two resources (Zephyr). The sheet gives no
reminders of how each value is worked out: that is on the Glossary page (Hero sheet section,
user ruling 2026-11-28), which has a line for every field. A new field needs a line there.
*/
