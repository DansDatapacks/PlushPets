# starts raycast

#reset past raycast
kill @e[type=minecraft:marker,tag=raycast.ray]

#init raycast tag
tag @s add raycast.raycasting

#set defaults
scoreboard players set #hit sourcecraft.temp 0
execute unless score #distance sourcecraft.temp matches 0.. run scoreboard players set #distance sourcecraft.temp 7

#scale distance
scoreboard players operation #distance sourcecraft.temp *= #10 sourcecraft.data

#run raycast
execute as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function plushpets.1:raycast/run_raycast

#reset tag
tag @s remove raycast.raycasting

#reset scores
scoreboard players reset #hit sourcecraft.temp
scoreboard players reset #distance sourcecraft.temp
scoreboard players reset #distanceTraveled sourcecraft.temp