# name plush pet

#get pet's ID
scoreboard players operation #pet_ID sourcecraft.temp = @s plushpets.ID

#if there already is a right click detector that matches ID, tag them
execute as @e[type=minecraft:villager,tag=plushpets.right_click_detector_plush_pet] if score @s plushpets.ID = #pet_ID sourcecraft.temp if data entity @s CustomName run tag @s add plushpets.right_click_detector_found

# check for easter eggs
execute if entity @e[type=minecraft:villager,tag=plushpets.right_click_detector_found,limit=1] run function plushpets.1:check_naming_easter_egg

#if right click detector found that was named, push name to plush pet
execute unless score #plushpets:easter_egg_found sourcecraft.temp matches 1 if entity @e[type=minecraft:villager,tag=plushpets.right_click_detector_found,limit=1] run data modify entity @s CustomName set from entity @e[type=minecraft:villager,tag=plushpets.right_click_detector_found,limit=1] CustomName
execute unless score #plushpets:easter_egg_found sourcecraft.temp matches 1 if entity @e[type=minecraft:villager,tag=plushpets.right_click_detector_found,limit=1] run data merge entity @s {CustomNameVisible:1b}

#reset tags
scoreboard players reset #plushpets:easter_egg_found sourcecraft.temp
tag @e[type=minecraft:villager,tag=plushpets.right_click_detector_found] remove plushpets.right_click_detector_found