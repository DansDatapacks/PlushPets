# starts raycast

#reset past raycast
kill @e[type=minecraft:marker,tag=raycast.ray]

#init raycast tag
tag @s add raycast.raycasting

#set defaults
scoreboard players set #hit plushpets.temp 0
execute unless score #distance plushpets.temp matches 0.. run scoreboard players set #distance plushpets.temp 7

#scale distance
scoreboard players operation #distance plushpets.temp *= #10 plushpets.data

#run raycast
execute as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function plushpets:raycast/run_raycast

#reset tag
tag @s remove raycast.raycasting

#reset scores
scoreboard players reset #hit plushpets.temp
scoreboard players reset #distance plushpets.temp
scoreboard players reset #distanceTraveled plushpets.temp