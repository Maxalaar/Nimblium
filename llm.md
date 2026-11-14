# Nimblium — à lire en premier

Tu travailles sur Nimblium, un générateur de cartes Typst pour un jeu de rôle basé sur Nimble.
Parle en français à l'utilisateur ; le texte des cartes et leurs notes sont en anglais.

Avant de toucher à une carte, lis dans `nimblium_documents/` :

1. `README.txt` : philosophie, ordre de priorité des règles, règles maison globales.
2. `writing_rules.txt` : comment on écrit une carte.
3. `workflow.txt` : organisation des fichiers, vérifications, bloc de notes en bas de carte.
4. `status.txt` : où en est le projet.

Selon la tâche : `card_format.txt` (champs des cartes), `creature_rules.txt` (créatures).

Après chaque modification de carte : `python3 tools/check_terms.py`, et
`python3 tools/review.py` pour voir ce qui reste à revoir. Les écarts volontaires au jeu sont
notés dans les cartes : `python3 tools/review.py --rules`.
