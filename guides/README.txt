# Nimblium — project philosophy

A Typst card generator for a tabletop RPG based on the **Nimble** system. Each card
(ability, spell, creature, mechanic) is its own `.typ` file, exported to PDF by
`tools/export_cards.py` (front on the left, back on the right).

The base game rules are in `sources/` (PDFs, not versioned). This folder, `guides/`, holds
everything specific to Nimblium: how cards are written, how the project is run, and where it
stands.

## Philosophy

- **One card language for the whole game.** Heroes, spells and creatures use the same blocks,
  the same capsules and the same wording. The same effect is always written the same way, as
  in Magic.
- **The card is enough.** What is played must be on the card (or in its reminders), without
  referring to the book. What isn't played (simply unlocking a spell, a stat increase) doesn't
  become a card.
- **Decisions are recorded in the card.** A card that departs from the official game says so
  in its notes block at the bottom of the file (`house-rule`, `interpretation`, `changelog`),
  and `python3 tools/review.py --rules` lists them all. See `workflow.txt`.

## Order of priority of the rules

1. The user's decisions: house rules (`house_rules.txt`) and `house-rule` notes in the cards.
   Never "fix" them from the book or a changelog.
2. The official changelogs, newest first. Their links are in `weblinks.txt`:
   - Core Rules, GMG & Heroes Full Changelog (October 2, 2026): the newest, it wins;
   - Core Rules Reprint Full Changelog: older.
   These pages only summarize the changes: a value they don't give comes from the PDF.
3. The PDFs in `sources/`, which date from BEFORE these changelogs and can't be updated. Any
   rule taken from a PDF must therefore be checked against the changelogs.

## House rules

Every house rule (whole game, creatures, classes, spells) is listed in `house_rules.txt`.
They override the book and the changelogs.

Project conventions, which don't change the game rules:

- **No card for a mere list of choices**: a card that only says what to choose at which
  level (e.g. "level 3: 1 Lesser Invocation") is replaced by a line in the class table.
- **Writing rules** (Reaction, "for free", conditions with no effect of their own, default
  values left unwritten): `writing_rules.txt`.

## Changelog rules applied to the whole game

- **Defense**: the hero stat "Armor" is called "Defense"; Defend reduces damage by the
  Defense. "Armor" now only means worn equipment.
- **Vulnerable** = +10 damage. **Resistant** = -10 damage.
- **Hide**: you no longer stay hidden after a kill no one saw (and no roll: house rule).
- **Conditions**: Blinded becomes Blind; Silenced is added; they don't stack (a creature has a
  condition or doesn't).
- **Defensive spells**: 0 actions, can only be cast while Defending.
- **Abilities**: limits reset at the END of your turn; 1/day no longer exists (1/Safe Rest or
  no limit).
- **Smoldering**: any effect that relies on a Smoldering target ends the condition.
- **Spells**: they deal their school's damage type unless they say otherwise.

## Folder tree

- `game/`: the game content. `class/`, `spells/`, `creatures/`, `actions/` (basic actions),
  `rules/` (rules pages), `keywords.typ`, `conditions.typ` and `terms.typ` (the vocabulary).
- `templates/`: the layout (card frames and types, class sheet, rules page, `style.typ`).
- `global.typ` (root): the only import of the cards. It gathers the templates, the
  vocabulary (`game/terms.typ`) and the definitions. Imports are absolute from the root:
  `#import "/global.typ": *`.
- `CLAUDE.md` (root): entry point, loaded automatically by Claude Code.
- `guides/` (this folder): how we write, how we work, where we stand.
- `sources/`: the official Nimble PDFs (not versioned).
- `build/`: the exported book `nimblium_cards.pdf` (not versioned).
- `tools/`, `art/`: scripts and images.

## The files of this folder

House rules:
- `house_rules.txt`: the list of every house rule.

Writing cards:
- `writing_rules.txt`: how the text of a card is written (read it before any card).
- `creature_rules.txt`: creature house rules and the format of their cards.
- `card_format.txt`: the card types, their fields and their layout.
- Rules pages (`game/rules/`, one A4 sheet per area): the "Rules pages" section of
  `workflow.txt`.

Art:
- `art.txt`: graphic charter, family icons on the card backs, illustration generation with
  `tools/generate_image.py`.

Project management:
- `workflow.txt`: sources, file organization, checks, review tracking, pace of work.
- `status.txt`: where each class, spell school and creature family stands.
- `todo.txt`: what still has to be made, and the features set aside to be redone later.
- `weblinks.txt`: useful links, the official changelogs included.

Tools (`tools/`):
- `check_terms.py`: reports game terms typed by hand instead of through `game/terms.typ`.
- `review.py`: review status by class, and the list of card notes (`--rules`).
- `export_cards.py`: exports each card, class sheet and rules page to PDF next to its `.typ`.
- `generate_image.py`: generates the illustrations (see `art.txt`).
