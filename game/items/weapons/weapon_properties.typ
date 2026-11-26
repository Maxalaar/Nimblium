#import "/game/terms.typ": *

// Weapon properties, shared by the weapon cards (Core Rules p.34, "Weapon Properties").
// Each one is a named block, written in full on the card: no reminder needed.
// Properties without a number are fields of `weapon_properties`; those with a number
// are functions: weapon_heavy(2), weapon_load(1), weapon_stack(4), weapon_two_handed_unless(2).
#let weapon_properties = (
  one_handed: (kind: "passive", name: "One-Handed", effect: [It takes 1 hand.]),
  two_handed: (kind: "passive", name: "Two-Handed", effect: [It takes 2 hands.]),
  light: (kind: "passive", name: "Light", effect: [You can dual wield it with another Light weapon.]),
  thrown: (kind: "passive", name: "Thrown", effect: [You can throw it to make a ranged attack. Once thrown, you no longer have it.]),
  vicious: (kind: "passive", name: "Vicious", effect: [Whenever you roll its #primary_die again for a critical hit, roll 1 more die of the same type.]),
)

// Damage type, the first block of every weapon: "Piercing", or "Slashing or Piercing".
#let weapon_damage(name) = (kind: "passive", name: name, effect: [Its damage is #lower(name).])

// Two-handed, but one hand is enough with enough STR (Longsword, Spear).
#let weapon_two_handed_unless(n) = (kind: "passive", name: "Two-Handed", effect: [It takes 2 hands, or 1 hand if you have at least #n #STR.])
#let weapon_heavy(n) = (kind: "passive", name: "Heavy", effect: [You need at least #n #STR to attack with it.])
#let weapon_stack(n) = (kind: "passive", name: "Stack", effect: [This card is a stack of #n. Each attack throws one, and you no longer have it.])
#let weapon_load(n) = (kind: "active", name: "Load", cost: (actions(n),), effect: [You must load it before each attack.])
