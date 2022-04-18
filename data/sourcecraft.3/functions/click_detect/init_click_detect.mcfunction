# init click detector entity

#get player ID
scoreboard players operation #ID sourcecraft.temp = @s sourcecraft.ID

#summon click detect entity
execute unless entity @e[type=minecraft:wandering_trader,tag=sourcecraft.click_detector_found,limit=1] run summon minecraft:wandering_trader ~ -500 ~ {Offers:{},NoAI:1b,NoGravity:1b,Silent:1b,ActiveEffects:[{Id:14b,Duration:100000,ShowParticles:0b}],Tags:["sourcecraft.click_detect_entity","sourcecraft.click_detect_entity_init","global.ignore"],Team:"sourcecraft.nocollison"}

#give click detect entity matching ID to executor
scoreboard players operation @e[type=minecraft:wandering_trader,tag=sourcecraft.click_detect_entity_init,limit=1] sourcecraft.ID = #ID sourcecraft.temp

#reset tags
tag @e[type=minecraft:wandering_trader] remove sourcecraft.click_detect_entity_init

#give init tag
tag @s add sourcecraft.click_detect_running