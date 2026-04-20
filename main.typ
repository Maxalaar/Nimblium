#import "paginated_card_grid.typ": paginated_card_grid
#import "class/mod.typ": *
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

// #let all_cards = (
//   skeleton,
//   zombie,
//   ghoul,
//   specter,
//   ogre_zombie,
//   mummy,
//   giant_zombie,
//   wraith,
//   mummy_lord,
// )
 
#let all_cards = (
  sneak_attack,
  vicious_opportunist,
  cheat,
  creative_accounting,
  exploit_weakness,
  creative_accounting,
  exploit_weakness,
  feinting_attack,
  how_you_get_here,
  i_outta_here,
  amidst_all_this_commotion,
  leave_no_trace,
  low_blow,
  sweet_talk,
)

#paginated_card_grid(all_cards, cards-per-page: 9, columns: 3)