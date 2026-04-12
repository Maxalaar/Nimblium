#import "paginated_card_grid.typ": paginated_card_grid
#import "spells/mod.typ": *
#import "creatures/mod.typ": *

#set page(
  paper: "a4",
  margin: 0.5cm,
)

// #let all_cards = (
//   // Fire
//   flame_dart,
//   hearts_fire,
//   ignite,
//   enchant_weapon,
//   flame_barrier,
//   pyroclasm,
//   fiery_embrace,
//   living_inferno,
//   dragonform,
//   // Ice
//   ice_lance,
//   snowblind,
//   frost_shield,
//   shatter,
//   cryosleep,
//   rimeblades,
//   arctic_blast,
//   glacier_strike,
//   arctic_annihilation,
// )

// #let all_cards = (
//   goblin_minion,
//   goblin,
//   goblin_ratrider,
// )

#let all_cards = (
  skeleton,
  zombie,
  ghoul,
  specter,
  ogre_zombie,
  mummy,
  giant_zombie,
  wraith,
  mummy_lord,
)

#paginated_card_grid(all_cards, cards-per-page: 9, columns: 3)