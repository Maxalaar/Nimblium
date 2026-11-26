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
  Casting a spell costs the actions its card shows. You need a free hand or a spellcasting
  focus, and you must be able to speak. A #kw_silenced creature can't cast spells.

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
  tier you have unlocked. For each extra mana, the spell gains its UPCAST effect once.

  When a spell has several UPCAST effects, choose one of them for each extra mana.
]

#section("Cantrips")[
  Cantrips grow stronger as you level up. Their HIGH LEVELS effect says how, and at which
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
]

/*
review: style=2026-11-14 changelog=2026-10-02

Source: Core Rules p.13 (Cast Spell), p.44-45 (Spells) and p.52 (Utility Spells), both
changelogs (spells deal their school's damage type, defensive spells cost 0 actions and can
only be cast while Defending, multi-target attacks roll normally and only area attacks can't
miss or crit, Silenced). Concentration, casting over several turns and the area rules are on
the Combat page.

interpretation: Spell scrolls and wands are items: they will be equipment cards, not rules
on this page. Secret spells are left to the GM.
*/
