# init right click detector entity

#get pet's ID
scoreboard players operation #pet_ID sourcecraft.temp = @s plushpets.ID

#if there already is a right click detector that matches ID, tag them
execute as @e[type=minecraft:villager,tag=plushpets.right_click_detector_plush_pet] if score @s plushpets.ID = #pet_ID sourcecraft.temp run tag @s add plushpets.right_click_detector_found

#if found, keep it alive
tag @e[type=minecraft:villager,tag=plushpets.right_click_detector_found,limit=1] add plushpets.right_click_detector_valid

#if no right click detector found, summon it
execute unless entity @e[type=minecraft:villager,tag=plushpets.right_click_detector_found,limit=1] run summon minecraft:villager ~ ~-256 ~ {Invulnerable:1b,NoAI:1b,NoGravity:1b,Silent:1b,ActiveEffects:[{Id:14b,Duration:100000,ShowParticles:0b}],Tags:["plushpets.right_click_detector","plushpets.right_click_detector_plush_pet","plushpets.right_click_detector_init","plushpets.right_click_detector_valid","global.ignore"],Team:"NoCollision"}
execute unless entity @e[type=minecraft:villager,tag=plushpets.right_click_detector_found,limit=1] run scoreboard players operation @e[type=minecraft:villager,tag=plushpets.right_click_detector_init] plushpets.ID = #pet_ID sourcecraft.temp

#reset tags
tag @e[type=minecraft:villager,tag=plushpets.right_click_detector_found] remove plushpets.right_click_detector_found