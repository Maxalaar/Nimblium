// Single source for game vocabulary. Available on every card through global.typ.
// Use these instead of typing the term by hand; check_terms.py reports raw forms.
#import "style.typ": keyword_style

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
#let kw_asleep = keyword_style[Asleep]
#let kw_blind = keyword_style[Blind]
#let kw_blindsight = keyword_style[Blindsight]
#let kw_bloodied = keyword_style[Bloodied]
#let kw_d66 = keyword_style[D66]
#let kw_dazed = keyword_style[Dazed]
#let kw_difficult_terrain = keyword_style[Difficult Terrain]
#let kw_distracted = keyword_style[Distracted]
#let kw_dying = keyword_style[Dying]
#let kw_grappled = keyword_style[Grappled]
#let kw_hampered = keyword_style[Hampered]
#let kw_hide = keyword_style[Hide]
#let kw_incapacitated = keyword_style[Incapacitated]
#let kw_invisible = keyword_style[Invisible]
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
