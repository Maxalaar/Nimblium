#import "/global.typ": *
#import "stormshifter_keywords.typ": stormshifter_keywords

#let ability_data = (
    name: "Beastshift",
    type: ("Ability", "Stormshifter"),
    blocks: (
      (kind: "active", cost: (actions(1),), name: "Harmless Beast", effect: [Transform into your #card_ref("Harmless Beast") form.]),
      (kind: "passive", name: "Direbeast Charges", effect: [When combat starts, you gain #DEX Direbeast charges. Those you haven't spent are lost when combat ends.]),
      (kind: "active", cost: (actions(1), direbeast_cost(1)), name: "Direbeast", effect: [Transform into a #kw_direbeast_form you know, for up to 1 minute. You may add 1 Chimeric Boon you know to it.]),
      (kind: "passive", name: "Ending a Form", effect: [A form ends when you drop to 0 #HP or cast a spell. You may end it on your turn for free.]),
    ),
    levels: [
      *Level 20:* After you cast a tiered spell, you may use Beastshift for no action.
    ],
    reminder: (stormshifter_keywords.direbeast_form,),
)

#let beastshift = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

changelog: Harmless forms are free, with no charge. Direbeast forms DEX times per encounter
(written as DEX Direbeast charges gained when combat starts), for up to 1 minute (was: DEX Beastshift charges per Safe Rest, shared by every form). Expert
Shifter is removed.

interpretation: Archdruid (level 20: Beastshift for 0 actions after a tiered spell) is a Levels
line.

interpretation: The harmless form is its own card (Harmless Beast), like the Direbeast forms,
and costs no Direbeast charge (those only exist in combat).

interpretation: The Chimeric Boon you may add comes from the level 6 Chimeric Boon feature; it
does nothing before you know a boon.
*/
