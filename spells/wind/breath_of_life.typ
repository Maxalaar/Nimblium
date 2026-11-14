#import "../../global.typ": *

#let spell_data = (
    name: "Breath of Life",
    type: (
        "Spell",
        "Wind",
        "Cantrip",
    ),
    cost: (
        actions(1),
    ),
    range: "6",
    effect: [A #kw_dying creature within Range regains 1d4 #HP. If it regains 4 or more, it also gains 1 action.],
    high_Levels: [This spell's Range and healing each increase by 2 at levels 5, 10, 15 and 20.],
    reminder: (conditions.dying,),
)

#let breath_of_life = creat_spell(spell_data)
