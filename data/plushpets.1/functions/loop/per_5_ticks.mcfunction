# runs every tick

#player holding glistering melon slice and looking at a weakness applied player head (start detecting right clicks)
execute unless score #plushpets.option.no_animating sourcecraft.data matches 1 as @a if predicate plushpets.1:holding_glistering_melon_slice at @s if entity @e[type=minecraft:area_effect_cloud,tag=plushpets.weakness_effect,distance=..5] run function plushpets.1:detect_placed_plush_right_click

#player looking at plush pet (start detecting right clicks)
execute as @a at @s if entity @e[type=minecraft:armor_stand,tag=plushpets.plush_pet,distance=..5] run function plushpets.1:detect_plush_pet_right_click

#remove invalidated right click detectors
execute as @e[type=minecraft:villager,tag=plushpets.right_click_detector,tag=!plushpets.right_click_detector_valid] run function plushpets.1:utility/remove_entity
tag @e[type=minecraft:villager,tag=plushpets.right_click_detector,tag=plushpets.right_click_detector_valid] remove plushpets.right_click_detector_valid

#player right clicked
execute as @a[scores={plushpets.rightclick=1..}] run function plushpets.1:check_plush_pet_right_click

#look at nearest player if not pathfinding
execute as @e[type=minecraft:armor_stand,tag=plushpets.plush_pet,tag=!plushpets.keep_pathfinding_to_player,tag=!plushpets.is_breeding] at @s if entity @p[distance=..5] facing entity @p feet run tp ~ ~ ~

#breeding handle
execute as @e[type=minecraft:armor_stand,tag=plushpets.can_breed,tag=!plushpets.plush_pet_sitting] at @s run function plushpets.1:handle_breeding

#handle visual weakness effect (when playerhead is gone)
execute as @e[type=minecraft:area_effect_cloud,tag=plushpets.weakness_effect] at @s unless block ~ ~ ~ #plushpets.1:player_heads run kill @s

#kill plush entities in fire/lava
execute unless score #plushpets.option.antigrief sourcecraft.data matches 1 as @e[type=minecraft:armor_stand,tag=plushpets.plush_entity,tag=!plushpets.fire_death_init] at @s positioned ~ ~1.7 ~ if block ~ ~ ~ #plushpets.1:fire run function plushpets.1:init_plush_entity_fire_death

#init wandering traders with plush
execute as @e[type=minecraft:wandering_trader,tag=!plushpets.wandering_trader_init] run function plushpets.1:api/generate_loot/wandering_trader

#reset scores
scoreboard players reset @a plushpets.rightclick

#loop
schedule function plushpets.1:loop/per_5_ticks 1t replace