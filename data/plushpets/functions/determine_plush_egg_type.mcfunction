# determines type of plush in plush egg

#generate random chance (1-100)
scoreboard players set #plushpets:rng.input plushpets.temp 100
function plushpets:utility/rng/rng
scoreboard players add #plushpets:rng.output plushpets.temp 1

#parent 1
execute if score #plushpets:rng.output plushpets.temp matches 1..49 run data modify entity @e[type=minecraft:armor_stand,tag=plushpets.plush_egg_init,limit=1] ArmorItems[3].tag.plushpets.egg_type.SkullOwner set from entity @s ArmorItems[3].tag.SkullOwner

#parent 2
execute if score #plushpets:rng.output plushpets.temp matches 50..98 run data modify entity @e[type=minecraft:armor_stand,tag=plushpets.plush_egg_init,limit=1] ArmorItems[3].tag.plushpets.egg_type.SkullOwner set from entity @e[type=minecraft:armor_stand,tag=plushpets.breed_partner_found,limit=1] ArmorItems[3].tag.SkullOwner

#change golden variants to normal versions
execute as @e[type=minecraft:armor_stand,tag=plushpets.plush_egg_init,limit=1] run function plushpets:handle_golden_plush_breed

#golden egg
execute if score #plushpets:rng.output plushpets.temp matches 99..100 run function plushpets:init_golden_plush_egg