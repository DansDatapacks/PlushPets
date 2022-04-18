# ends click detect

#get player's ID
scoreboard players operation #ID sourcecraft.temp = @s sourcecraft.ID

#if there already is a click detector entity that matches ID, tag them
execute as @e[type=minecraft:wandering_trader,tag=sourcecraft.click_detect_entity] if score @s sourcecraft.ID = #ID sourcecraft.temp run tag @s add sourcecraft.click_detect_entity_found

#remove click detect entity
execute as @e[type=minecraft:wandering_trader,tag=sourcecraft.click_detect_entity_found] run function #sourcecraft:remove_entity

#remove init tag
tag @s remove sourcecraft.click_detect_running