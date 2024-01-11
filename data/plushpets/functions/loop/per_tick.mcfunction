# runs every tick

#init item NBT tags
execute as @e[type=minecraft:item,tag=!plushpets.init_item_NBT] run function plushpets:utility/init_item_nbt_tags

#init dropped player heads (check if they are a plush pet)
execute as @e[type=minecraft:item,tag=plushpets.item_player_head,tag=!plushpets.scanned_player_head,tag=!plushpets.plush_item] at @s run function plushpets:utility/check_dropped_plush_item

#init thrown potion
execute as @e[type=minecraft:potion,tag=!plushpets.init_thrown_potion_NBT] run function plushpets:utility/init_thrown_potion_nbt_tags

#pseudo plush hitbox
execute as @e[type=minecraft:armor_stand,tag=plushpets.plush_entity] at @s anchored eyes positioned ^ ^ ^ run function plushpets:check_plush_pet_hitbox

#plush pet pathfinding
execute as @e[type=minecraft:armor_stand,tag=plushpets.plush_pet,tag=!plushpets.plush_pet_sitting,tag=!plushpets.is_breeding] at @s run function plushpets:check_pet_pathfind

#rotate plush pets towards nearest player when sitting
execute as @e[type=minecraft:armor_stand,tag=plushpets.plush_pet,tag=plushpets.plush_pet_sitting,tag=!plushpets.is_breeding] at @s if entity @p[distance=..8] facing entity @p feet run tp ~ ~ ~

#handle phasing through blocks
execute as @e[type=minecraft:armor_stand,tag=plushpets.plush_pet] at @s if block ~ ~1.4 ~ #plushpets:passable run tp ~ ~-0.1 ~
execute as @e[type=minecraft:armor_stand,tag=plushpets.plush_pet] at @s unless block ~ ~1.52 ~ #plushpets:passable run tp ~ ~0.4 ~
execute as @e[type=minecraft:armor_stand,tag=plushpets.plush_entity_small] at @s if block ~ ~0.62 ~ #plushpets:passable run tp ~ ~-0.1 ~
execute as @e[type=minecraft:armor_stand,tag=plushpets.plush_entity_small] at @s unless block ~ ~0.75 ~ #plushpets:passable run tp ~ ~0.4 ~

#tp right click detector to plush pet
execute as @e[type=minecraft:villager,tag=plushpets.right_click_detector_plush_pet] run function plushpets:handle_right_click_detector_entity

#scan for player heads on weakness potion land
execute unless score #plushpets:option.no_animating plushpets.data matches 1 as @e[type=minecraft:potion,tag=plushpets.weakness_potion] at @s unless block ~ ~-0.5 ~ #plushpets:passable run function plushpets:scan/init_scan

#loop
schedule function plushpets:loop/per_tick 1t replace