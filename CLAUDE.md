# Nimblium — read first

You are working on Nimblium, a Typst card generator for a tabletop RPG based on Nimble.
Talk to the user in French. Everything written in the project (cards, notes, guides,
comments) is in English.

Before touching a card, read in `guides/`:

1. `README.txt`: philosophy, order of priority of the rules.
2. `house_rules.txt`: every house rule (they override the book).
3. `writing_rules.txt`: how a card is written.
4. `workflow.txt`: file organization, checks, notes block at the bottom of a card.
5. `status.txt`: where the project stands.

Depending on the task: `card_format.txt` (card fields), `creature_rules.txt` (creatures),
`art.txt` (images and icons), the "Rules pages" section of `workflow.txt` (`game/rules/`).

After each card change: `python3 tools/check_terms.py`, and `python3 tools/review.py` to see
what is left to review. Deliberate departures from the game are noted in the cards:
`python3 tools/review.py --rules`.
