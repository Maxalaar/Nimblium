#import "paginated_card_grid.typ": paginated_card_grid
#import "spells/mod.typ": *

#set page(
  paper: "a4",
  margin: 0.5cm,
)

#let all_cards = (
  flame_dart,
  hearts_fire,
  ignite,
  enchant_weapon,
  flame_barrier,
  pyroclasm,
)

#paginated_card_grid(all_cards, cards-per-page: 9, columns: 3)