// Single source for game vocabulary. Available on every card through global.typ.
// Use these instead of typing the term by hand; tools/check_terms.py reports raw forms.
#import "style.typ": keyword_style, card_ref_style

// Stats and acronyms
#let STR = "STR"
#let DEX = "DEX"
#let INT = "INT"
#let WIL = "WIL"
#let KEY = "KEY"
#let LVL = "LVL"
#let HP = "HP"
#let TotH = "TotH"

// Game terms
#let safe_rest = "Safe Rest"
#let defense = "Defense"
#let speed = "speed"
#let primary_die = "Primary Die"
#let thrill_of_the_hunt = "Thrill of the Hunt"

// Costs, for the `cost` field
#let actions(n) = if n == 1 { "1 Action" } else { str(n) + " Actions" }
#let mana(n) = str(n) + " Mana"
#let toth_charges(n) = str(n) + " " + TotH + " charge" + if n == 1 { "" } else { "s" }
#let wounds(n) = str(n) + " Wound" + if n == 1 { "" } else { "s" }
#let fury_dice_cost(n) = str(n) + " Fury Dice"
#let combat_dice_cost(n) = str(n) + " Combat " + if n == 1 { "Die" } else { "Dice" }
#let searing_light_uses(n) = str(n) + " Searing Light use" + if n == 1 { "" } else { "s" }

// Limits, for the `limitation` field. `n` may be a number or a stat such as WIL.
#let per_turn(n) = str(n) + "/turn"
#let per_round(n) = str(n) + "/round"
#let per_encounter(n) = str(n) + "/encounter"
#let per_day(n) = str(n) + "/day"
#let per_safe_rest(n) = str(n) + "/" + safe_rest

// Formulas
#let times(a, b) = [#a×#b]
#let dc(base, stat: none) = if stat == none { "DC " + str(base) } else { "DC " + str(base) + "+" + stat }

// Keywords, styled. The matching definition still goes in the card's `reminder`.
#let kw_advantage = keyword_style[Advantage]
#let kw_asleep = keyword_style[Asleep]
#let kw_blind = keyword_style[Blind]
#let kw_blindsight = keyword_style[Blindsight]
#let kw_bloodied = keyword_style[Bloodied]
#let kw_charged = keyword_style[Charged]
#let kw_cover = keyword_style[Cover]
#let kw_d44 = keyword_style[D44]
#let kw_d66 = keyword_style[D66]
#let kw_d88 = keyword_style[D88]
#let kw_dazed = keyword_style[Dazed]
#let kw_demand_control = keyword_style[Demand Control]
#let kw_difficult_terrain = keyword_style[Difficult Terrain]
#let kw_disadvantage = keyword_style[Disadvantage]
#let kw_distracted = keyword_style[Distracted]
#let kw_dying = keyword_style[Dying]
#let kw_empowered = keyword_style[Empowered]
#let kw_flying = keyword_style[Flying]
#let kw_full_cover = keyword_style[Full Cover]
#let kw_frightened = keyword_style[Frightened]
#let kw_grappled = keyword_style[Grappled]
#let kw_hampered = keyword_style[Hampered]
#let kw_aura = keyword_style[Aura]
#let kw_hide = keyword_style[Hide]
#let kw_incapacitated = keyword_style[Incapacitated]
#let kw_interpose = keyword_style[Interpose]
#let kw_invisible = keyword_style[Invisible]
#let kw_invoke_chaos = keyword_style[Invoke Chaos]
#let kw_knockback = keyword_style[Knockback]
#let kw_marked = keyword_style[Marked]
#let kw_prone = keyword_style[Prone]
#let kw_rage = keyword_style[Rage]
#let kw_raging = keyword_style[Raging]
#let kw_restrained = keyword_style[Restrained]
#let kw_silenced = keyword_style[Silenced]
#let kw_slowed = keyword_style[Slowed]
#let kw_smoldering = keyword_style[Smoldering]
#let kw_taunt = keyword_style[Taunt]
#let kw_taunted = keyword_style[Taunted]
#let kw_vulnerable = keyword_style[Vulnerable]
#let kw_weakened = keyword_style[Weakened]

// Name of another card, in italics. In a document that also holds that card
// (the book export, tools/export_cards.py --book), it links to it. Every card
// carries a metadata marker with its name (creat_card in creat_frame.typ).
// The second argument is the text shown, for plurals: #card_ref("Shadow", "Shadows").
// tools/check_terms.py reports card names typed without it.
#let card_ref(name, ..shown) = {
  let body = card_ref_style(if shown.pos().len() > 0 { shown.pos().first() } else { name })
  context {
    let hits = query(metadata).filter(m => type(m.value) == dictionary and m.value.at("card", default: none) == name)
    if hits.len() > 0 { link(hits.first().location(), body) } else { body }
  }
}
