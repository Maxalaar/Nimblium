#import "/global.typ": *
#import "/templates/rules_page.typ": rules_page, section, rule, values

#rules_page(
  name: "Magic",
  intro: [How heroes cast spells, pay for them with mana and make them stronger.],
)[

#section("Spells")[
  There are 6 schools of magic. Each school has cantrips and 9 tiers of spells. You can cast
  any spell of a school you know, up to the highest tier you have unlocked. Your class sheet
  says which schools and tiers you get, and you hold a card for each of your spells.

  A spell deals damage of its school's type, unless it says otherwise.

  #values(columns: (17mm, 1fr), header: ("School", "Strengths"),
    [Fire], [High, steady damage at medium range. Some spells make creatures
    #kw_smoldering and do more against them.],
    [Ice], [Medium damage at long range, control of the battlefield, protection of the
    caster. Some spells do more against #kw_hampered creatures.],
    [Lightning], [High damage at long range, teleportation, metal targets. Some spells can
    hurt the caster.],
    [Necrotic], [Minions, traps and control. Some spells prey on #kw_bloodied creatures,
    allies included.],
    [Radiant], [Strong against the undead and the frightened. Protection, healing, and even
    a return to life.],
    [Wind], [Moving friends and foes, cutting through groups. Some spells deal more damage on
    a critical hit.],
  )
]

#section("Casting a spell")[
  Casting a spell costs the actions its card shows. You need a free hand, and you must be able to
  speak. A #kw_silenced creature can't cast spells.

  A spell with a range has #kw_disadvantage while an enemy is adjacent to you, like any
  ranged attack. A spell with a reach doesn't.

  When a spell calls for a check, its DC is #dc(10, stat: KEY).

  #rule[Several targets][A spell that targets several creatures rolls its attack for each
  one, like separate attacks.]

  #rule[Defensive spells][A spell you may cast while Defending costs no action. You can
  cast it only while you Defend.]
]

#section("Mana")[
  Tiered spells cost mana. A spell's mana cost equals its tier. Cantrips cost no mana.

  Your class card says how much mana you have and how you recover it, such as the
  #card_ref("Mage Mana Pool"), #card_ref("Oathsworn Mana Pool") or
  #card_ref("Shepherd Mana Pool").
]

#section("Upcasting")[
  When you cast a tiered spell, you may spend more mana than its tier, up to the highest
  tier you have unlocked. For each extra mana, the spell gains its Upcast effect once.

  When a spell has several Upcast effects, choose one of them for each extra mana.
]

#section("Cantrips")[
  Cantrips grow stronger as you level up. Their Levels section says how, and at which
  levels.
]

#section("Reading a spell card")[
  #values(columns: (14mm, 1fr),
    [ACT], [The actions it costs to cast. A spell with no ACT is cast without an action, as
    its text says.],
    [MANA], [The mana it costs.],
    [CONC], [It needs concentration, for up to this long. The Combat page explains
    concentration.],
    [CAST], [Its casting time, in minutes, for a spell cast outside combat.],
    [DMG], [The damage it deals.],
    [RNGE], [How far away its target can be.],
    [REACH], [How far around you it reaches, or the shape of its area, such as Cone 4 or
    Line 12.],
    [AREA], [The size of the area it affects.],
    [AoE], [In its types, the spell affects an area. The Areas rule of the Combat page
    applies.],
  )
]

#section("Utility spells")[
  Some classes also learn utility spells. They are tools for exploration and daily life,
  rather than for fighting. Many take minutes to cast, as their CAST shows, and are cast
  outside combat.
]

#section("Chaos Table")[
  When an effect tells you to #kw_invoke_chaos, roll a d20 on this table. An effect that lasts
  ends after 1 minute, or when you invoke chaos again.

  #values(columns: (7mm, 1fr), header: ("d20", "Effect"),
    [1], [*Elemental Eruption.* Each creature within 6 spaces of you makes a #DEX check, and takes #times(INT, "d10") fire damage, or half on a success. You fail yours.],
    [2], [*Backfire.* You gain 1 Wound. The spell you just cast also targets you, or an enemy if it helps its targets.],
    [3], [*Aww, Nuts!.* You become a Tiny squirrel until you take damage. You can't cast spells, and finding acorns is all you can think of.],
    [4], [*Summon Aetherlings.* At the end of each of your turns, #INT hostile aetherling minions (1d6 damage) appear adjacent to you and act right after you.],
    [5], [*Graviturgical Grace.* At the end of each of your turns, a random enemy moves to a space adjacent to you.],
    [6], [*Liquefy Legs.* You are #kw_prone, you can't stand up, and your #speed is 0 out of water.],
    [7], [*Elemental Entanglement.* At the start of each of your turns, an enemy chooses what you do with 1 of your actions.],
    [8], [*Ethereal Cocoon.* Until the end of your next turn, you are #kw_prone, you can't move, and you take no damage. You spend all your actions casting cantrips at the nearest creature.],
    [9], [*Manastorm.* The last spell you cast is cast again for free, at a random target.],
    [10], [*Reality Warp.* Every space within 6 spaces of you is #kw_difficult_terrain.],
    [11], [*Displacement.* Roll 1d4 and teleport. 1, where the GM chooses. 2, 6 spaces straight up, then you fall. 3, a space you choose within 6 spaces. 4, a space you choose within 12 spaces.],
    [12], [*Chaos Step.* Swap places with a creature you can see.],
    [13], [*Mindfire.* The least clever enemy within 16 spaces takes #times(INT, "d6") psychic damage, ignoring #defense, and becomes #kw_smoldering.],
    [14], [*Emerge Beautiful.* You sprout butterfly wings and are #kw_flying.],
    [15], [*Unbiggen.* Your size goes 1 step smaller. You have #kw_advantage on Stealth checks, and attacks against you have #kw_disadvantage.],
    [16], [*Embiggen.* Your size goes 1 step bigger. You gain #times(INT, "d10") temp #HP and #kw_advantage on #STR checks.],
    [17], [*Awakening.* A third eye opens on your forehead. Your attacks and Perception checks have #kw_advantage.],
    [18], [*Diamond Skin.* Your #defense is multiplied by #INT, and Defend costs you no action.],
    [19], [*Mighty Mana.* Your spells, the one you just cast included, gain 2 Upcast effects for free, even beyond your highest tier.],
    [20], [*Elemental Overload.* Each enemy within 12 spaces takes #times(INT, "d8") lightning damage. At the end of each of your turns, you regain #INT mana, lost when combat ends.],
  )
]
]

/*
review: style=2026-11-14 changelog=2026-10-02

house-rule: The Chaos Table (Game Master's Guide p.114) is public, on this page (book: the Chaos Table is secret, for the GM). The Chaos
Table is converted: saves become checks, Armor becomes Defense, the Assess action becomes
Perception, "pulled" becomes a move. The changelog reworked the Chaos Table without publishing
it: this is the printed version.

Source: Core Rules p.13 (Cast Spell), p.44-45 (Spells) and p.52 (Utility Spells), both
changelogs (spells deal their school's damage type, defensive spells cost 0 actions and can
only be cast while Defending, multi-target attacks roll normally and only area attacks can't
miss or crit, Silenced). Concentration, casting over several turns and the area rules are on
the Combat page.

interpretation: Wands are items (game/items/gear/wand.typ; spell scrolls merged into them), not rules
on this page. Secret spells are left to the GM.
*/
