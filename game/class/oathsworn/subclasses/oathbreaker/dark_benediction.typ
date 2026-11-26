#import "/global.typ": *

#let ability_data = (
    name: "Dark Benediction",
    type: ("Ability", "Oathsworn", "Oathbreaker"),
    blocks: (
      (kind: "passive", effect: [You can't cast #card_ref("True Strike"), #card_ref("Heal") or #card_ref("Warding Bond").]),
      (kind: "passive", effect: [You can cast #card_ref("Entice"), #card_ref("Shadow Trap") and #card_ref("Dread Visage") as Oathsworn spells.]),
      (kind: "passive", effect: [When you choose a Utility Spell, it may be Radiant or Necrotic.]),
      (kind: "passive", effect: [You can target yourself with #card_ref("Entice").]),
    ),
)

#let dark_benediction = creat_ability(ability_data)

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Heroes p.74 (Oathbreaker, Dark Benediction) and the 2026-10-02 changelog (Blood
Magic, level 3: "You can use Entice on yourself"). The Oathbreaker was an Extra Subclass of
the Heroes book; the changelog moves it into the Oathsworn: here, a subclass like the others.
*/
