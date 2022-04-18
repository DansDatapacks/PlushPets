# starts raycast

#reset past raycast
kill @e[type=minecraft:marker,tag=sourcecraft.raycast.ray]

#init raycast tag
tag @s add sourcecraft.raycast.raycasting

#set defaults
scoreboard players set #raycast_hit sourcecraft.temp 0
execute unless score #raycast_distance sourcecraft.temp matches 0.. run scoreboard players set #raycast_distance sourcecraft.temp 7

#scale distance
scoreboard players operation #raycast_distance sourcecraft.temp *= #10 sourcecraft.data

#run raycast
execute as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function sourcecraft.3:raycast/simple/run

#reset tag
tag @s remove sourcecraft.raycast.raycasting

#reset scores
scoreboard players reset #raycast_hit sourcecraft.temp
scoreboard players reset #raycast_distance sourcecraft.temp
scoreboard players reset #raycast_distance_traveled sourcecraft.temp