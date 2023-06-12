# run click detect

#get player's position
function sourcecraft.3:utility/get_position

#get player's ID
scoreboard players operation #ID sourcecraft.temp = @s sourcecraft.ID

#tag player to sync entity with their position
tag @s add sourcecraft.position_sync_entity

#sync click detect entity position
execute as @e[type=minecraft:wandering_trader,tag=sourcecraft.click_detect_entity] if score @s sourcecraft.ID = #ID sourcecraft.temp at @s run function sourcecraft.3:utility/sync_position
# execute as @e[type=minecraft:wandering_trader,tag=sourcecraft.click_detect_entity] if score @s sourcecraft.ID = #ID sourcecraft.temp at @s run tp ~ ~0.5 ~