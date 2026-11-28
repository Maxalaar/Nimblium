#import "/global.typ": *
#import "/templates/rules_page.typ": rules_page, section
#import "/game/class/stormshifter/stormshifter_keywords.typ": stormshifter_keywords

// Every definition of a dictionary, sorted by name.
#let definitions(dict) = {
  set text(size: 8.5pt)
  for (_, d) in dict.pairs().sorted(key: p => p.at(0)) [#d

  ]
}

#rules_page(
  name: "Glossary",
  intro: [Every condition and keyword, in one place.],
)[

#section("Conditions")[
  A creature has a condition or doesn't. Conditions don't stack.

  #definitions(conditions)
]

#section("Keywords")[
  Keywords are the words every card uses the same way. Each card reminds the ones it uses.

  #definitions(keywords)
]

#section("Class keywords")[
  Some classes have keywords of their own.

  #for (class, dict) in (
    ("Berserker", berserker_keywords),
    ("Hunter", hunter_keywords),
    ("Mage", mage_keywords),
    ("Stormshifter", stormshifter_keywords),
  ) [
    #text(size: 7pt, tracking: 1.2pt, weight: "bold", upper(class))

    #definitions(dict)
  ]
]
]

/*
review: style=2026-11-14 changelog=2026-10-02

Source: game/conditions.typ, game/keywords.typ and the class keyword files
(game/class/<class>/<class>_keywords.typ). The page only gathers their definitions, sorted by
name: change a definition in its file, never here.

interpretation: One page for every condition and keyword (user ruling 2026-11-28), so the other
rules pages don't repeat them: the Combat page loses its Conditions list and the Difficult
Terrain, Cover and Full Cover definitions, the Adventure page the Advantage and Disadvantage
definitions. Keywords common to every class come first, then each class's own keywords, in one Class
keywords section. A class with no keyword file is not listed.
*/
