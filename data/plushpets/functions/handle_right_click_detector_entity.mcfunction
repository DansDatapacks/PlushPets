# handle right click detector entity

#get right click detector's ID
scoreboard players operation #right_click_detector_ID plushpets.temp = @s plushpets.ID

#find plush pet
execute as @e[type=minecraft:armor_stand,tag=plushpets.plush_pet] if score @s plushpets.ID = #right_click_detector_ID plushpets.temp run tag @s add plushpets.plush_pet_found

#if found, tp to plush pet
execute at @e[type=minecraft:armor_stand,tag=plushpets.plush_pet_found,limit=1] facing entity @p eyes run tp ^ ^ ^0.5

#reset tags
tag @e[type=minecraft:armor_stand,tag=plushpets.plush_pet_found] remove plushpets.plush_pet_found