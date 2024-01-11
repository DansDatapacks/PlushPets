# hatch egg

#particle
particle minecraft:block minecraft:light_blue_wool ~ ~0.73 ~ 0 0 0 0.1 20 normal

#sound
playsound minecraft:entity.turtle.egg_break neutral @a ~ ~0.73 ~ 1 1.4

#summon plush
summon minecraft:item ~ ~0.73 ~ {Item:{id:"minecraft:player_head",Count:1b},Tags:["plushpets.hatched_plush_init"]}

#set plush
data modify entity @e[type=minecraft:item,tag=plushpets.hatched_plush_init,limit=1] Item.tag.SkullOwner set from entity @s ArmorItems[3].tag.plushpets.egg_type.SkullOwner

#kill egg
kill @s[type=minecraft:armor_stand,tag=plushpets.plush_egg]

#reset tag
tag @e[type=minecraft:item,tag=plushpets.hatched_plush_init] remove plushpets.hatched_plush_init