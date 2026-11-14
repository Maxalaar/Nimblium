# Nimblium — philosophie du projet

Générateur de cartes Typst pour un jeu de rôle basé sur le système **Nimble**. Chaque carte
(capacité, sort, créature, mécanique) est un fichier `.typ` individuel, exporté en PDF par
`tools/export_cards.py` (recto à gauche, dos à droite).

Les règles du jeu de base sont dans `nimble_documents/` (PDF, non versionnés). Ce dossier,
`nimblium_documents/`, contient tout ce qui est propre à Nimblium : comment on rédige les
cartes, comment on gère le projet, et où on en est.

## Philosophie

- **Un seul langage de carte pour tout le jeu.** Héros, sorts et créatures utilisent les mêmes
  blocs, les mêmes capsules et la même formulation. Un même effet s'écrit toujours de la même
  façon, comme dans Magic.
- **La carte suffit.** Ce qui se joue doit être sur la carte (ou dans ses rappels), sans
  renvoyer au livre. Ce qui ne se joue pas (simple déblocage de sort, augmentation de stat)
  ne devient pas une carte.
- **Les décisions sont tracées dans la carte.** Une carte qui s'écarte du jeu officiel le dit
  dans son bloc de notes en bas de fichier (`house-rule`, `interpretation`, `changelog`), et
  `python3 tools/review.py --rules` les liste toutes. Voir `workflow.txt`.

## Ordre de priorité des règles

1. Les décisions de l'utilisateur : règles maison globales (plus bas) et notes `house-rule`
   dans les cartes. Ne pas les « corriger » d'après le livre ou le changelog.
2. Les changelogs officiels, le plus récent d'abord. Leurs liens sont dans `weblinks.txt` :
   - Core Rules, GMG & Heroes Full Changelog (2 octobre 2026) : le plus récent, il prime ;
   - Core Rules Reprint Full Changelog : plus ancien.
   Ces pages ne résument que les changements : une valeur absente se prend dans le PDF.
3. Les PDF de `nimble_documents/`, qui datent d'AVANT ces changelogs et ne peuvent pas être mis
   à jour. Toute règle tirée d'un PDF doit donc être confrontée aux changelogs.

## Règles maison globales

Elles touchent tout le jeu, donc elles vivent ici et pas dans une carte :

- **Actions des créatures** : contrairement à Nimble (une chose par tour, "OR" / "Then"), les
  créatures ont des actions comme les héros (1 par défaut, stat `ACT` si plus) et leurs
  capacités sont des blocs à capsules. Déplacement gratuit. Détails : `creature_rules.txt`.
- **Defense des monstres** (d'après le changelog du 2 octobre 2026) : l'armure des monstres
  devient leur Defense, une valeur chiffrée qui réduit les dégâts reçus. Medium = DEF 10
  (-10 dégâts), Heavy = DEF 20 (-20 dégâts). Champ `defense: 10` sur la carte, case `DEF`. Les
  crits l'ignorent toujours. Les cartes de héros disent "ignoring #defense" (plus "ignoring
  armor"). "Armor" ne reste que pour l'équipement porté ("metal armor" de Stormlash).
- **Règles d'écriture maison** (Reaction, "for free", conditions sans effet propre, valeurs par
  défaut non écrites) : `writing_rules.txt`.

## Règles du changelog appliquées à tout le jeu

- **Defense** : la stat de héros "Armor" s'appelle "Defense" ; Defend réduit les dégâts de la
  Defense. "Armor" ne désigne plus que l'équipement porté.
- **Vulnerable** = +10 dégâts. **Resistant** = -10 dégâts.
- **Hide** : Stealth DC 10 ; on ne reste plus caché après un kill que personne n'a vu.
- **Conditions** : Blinded devient Blind ; Silenced est ajoutée ; elles ne se cumulent pas (une
  créature a une condition ou ne l'a pas).
- **Sorts défensifs** : 0 action, lançables uniquement pendant un Defend.
- **Capacités** : les limites se réinitialisent à la FIN de ton tour ; 1/day n'existe plus
  (1/Safe Rest ou sans limite).
- **Smoldering** : tout effet qui s'appuie sur une cible Smoldering met fin à la condition.
- **Sorts** : ils infligent le type de dégâts de leur école sauf mention contraire.

## Les fichiers de ce dossier

Rédaction des cartes :
- `writing_rules.txt` : comment on écrit le texte d'une carte (à lire avant toute carte).
- `creature_rules.txt` : règles maison des créatures et format de leurs cartes.
- `card_format.txt` : les types de cartes, leurs champs et leur mise en page.

Gestion du projet :
- `workflow.txt` : sources, organisation des fichiers, vérifications, suivi des révisions,
  rythme de travail.
- `status.txt` : où en est chaque classe, école de sorts et famille de créatures.
- `weblinks.txt` : liens utiles, dont les changelogs officiels.

Outils (`tools/`) :
- `check_terms.py` : signale les termes de jeu tapés à la main au lieu de `terms.typ`.
- `review.py` : état des révisions par classe, et liste des notes de cartes (`--rules`).
- `export_cards.py` : exporte chaque carte en PDF à côté de son `.typ`.
- `generate_image.py` : génère les illustrations (voir `art/README.md`).
