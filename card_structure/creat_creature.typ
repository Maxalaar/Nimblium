#import "creat_frame.typ": creat_frame

#let creat_creature(creature) = {
  
  creat_frame(
    creature.name,
    type: if "type" in creature { creature.type } else { none },
    data: creature.ability,
    hit_points: if "hit_points" in creature { creature.hit_points } else { none },
    armor: if "armor" in creature { creature.armor } else { none },
    speed: if "speed" in creature { creature.speed } else { none },
    level: if "level" in creature { creature.level } else { none },
  )
}