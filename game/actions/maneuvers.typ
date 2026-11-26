#import "/global.typ": *

#let ability_data = (
    name: "Maneuvers",
    type: (
        "Ability",
        "Combat",
    ),
    blocks: (
      (
        kind: "active",
        name: "Assess",
        cost: (actions(1),),
        effect: [Choose one of these effects, then make a #dc(10) skill check that fits the situation. You can't Assess with the same skill twice in an encounter.

        *Ask a Question.* The GM answers honestly about a weakness, an ability or the plans of your enemies, or about the place or the story.\
        *Create an Opening.* The next #primary_die rolled against a target this round gets +1.\
        *Anticipate Danger.* Every #primary_die rolled against you this round gets −1.],
      ),
      (
        kind: "active",
        name: "Grab",
        cost: (actions(1),),
        effect: [With a free hand, make a #dc(10) Might or Finesse check against a creature within your Reach. On a success, it is #kw_grappled if it is your size or smaller. If it is bigger, you are #kw_riding it, and its attacks against you have #kw_disadvantage.],
      ),
      (
        kind: "active",
        name: "Escape",
        cost: (actions(1),),
        effect: [Make a #dc(10) #STR or #DEX save. On a success, you are no longer #kw_grappled.],
      ),
    ),
    reminder: (conditions.grappled, conditions.riding),
)

#let maneuvers = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.10 (Grappling) and p.13 (Assess), 2026-10-02 changelog (Assess DC 10,
grabbing is a DC 10 Might or Finesse check, a bigger creature attacks its rider with
disadvantage). What happens during a grapple (speed, advantage, crit) is on the Combat rules
page: it applies to creatures too.

interpretation: The changelog only changes the grab. The escape keeps the book's STR or DEX
save, at DC 10 as in guides/creature_rules.txt.
*/
