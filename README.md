# Nimblium

A Typst card generator for a tabletop RPG based on the **Nimble** system. Every card
(ability, spell, creature, item, ancestry, action) is its own `.typ` file. Class sheets and
rules pages are A4 pages made with the same tools.

## Requirements

- [Typst](https://typst.app) 0.14 or newer, on the `PATH` (`typst --version`).
- Python 3 (standard library only) for the scripts in `tools/`.
- Optional: the Tinymist extension for VS Code, to preview a `.typ` file live and jump from
  a PDF to its source.

## Compile everything

From the repository root:

```sh
python3 tools/export_cards.py          # every card, class sheet and rules page
python3 tools/export_cards.py --book   # the same, plus build/nimblium_cards.pdf
```

- Each card becomes a PDF **next to its `.typ`** (front on the left, back on the right),
  e.g. `game/spells/fire/flame_barrier.typ` → `game/spells/fire/flame_barrier.pdf`.
- Class sheets (`game/class/<class>/<class>_class_sheet.typ`) and rules pages
  (`game/rules/*.typ`) are exported next to their source too.
- `--book` also builds `build/nimblium_cards.pdf`: every card, one per page, with card
  names (`#card_ref`) as clickable links to the card they name.

PDFs and `build/` are not versioned (`.gitignore`).

## Compile a single file

A class sheet or a rules page compiles directly:

```sh
typst compile --root . game/rules/combat.typ
```

A card file only defines a symbol, so it needs a small wrapper (not committed):

```typ
// test.typ, at the root
#import "/game/spells/fire/flame_barrier.typ": flame_barrier
#set page(width: 2 * 63mm + 5mm, height: auto, margin: 0mm)
#flame_barrier
```

```sh
typst compile --root . test.typ test.pdf
```

Always pass `--root .`: imports are absolute from the root (`#import "/global.typ": *`).

## Checks after editing a card

```sh
python3 tools/check_terms.py     # game terms typed by hand instead of through game/terms.typ
python3 tools/review.py          # cards up to date / to review, by class or school (-v: all)
python3 tools/review.py --rules  # every house-rule, interpretation and changelog note
```

`check_terms.py` exits with status 1 when it finds a problem.

## Folder tree

| Path | Content |
|---|---|
| `game/` | The game content: `class/`, `spells/`, `creatures/`, `items/`, `ancestries/`, `actions/`, `rules/`, plus `keywords.typ`, `conditions.typ` and `terms.typ` (the vocabulary). |
| `templates/` | The layout: card frames and types, class sheet, rules page, `style.typ`. |
| `global.typ` | The single import of every card: templates, vocabulary and definitions. |
| `guides/` | How cards are written and how the project is run. Start with `guides/README.txt`. |
| `tools/` | Export, checks and image generation scripts. |
| `art/` | Icons (`art/icons/`) and illustrations; `art/tmp/` is not versioned. |
| `sources/` | The official Nimble PDFs (not versioned). |
| `build/` | The exported book (not versioned). |

## Adding a card

1. Read `guides/README.txt`, then `house_rules.txt`, `writing_rules.txt` and
   `workflow.txt`.
2. Create the file in snake_case next to its siblings (`how_you_get_here.typ`) and add it
   to the `mod.typ` of its folder.
3. Run the checks above, then `python3 tools/export_cards.py`.

## Illustrations (optional)

`tools/generate_image.py` generates images with a local Stable Diffusion Forge server
started with `--api` (`http://127.0.0.1:7860`). Style presets are in `art/styles.json`, the
graphic charter in `guides/art.txt`.

```sh
python3 tools/generate_image.py --models
python3 tools/generate_image.py -s engraving -c goblin -n 3 "goblin archer"
```
