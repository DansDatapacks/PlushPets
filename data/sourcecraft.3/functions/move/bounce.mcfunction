# bounces entity executing this function

#get current motion and apply transformation (if on ground)
execute unless block ~ ~-0.1 ~ #sourcecraft.3:passable store result entity @s Motion[1] double -0.001 run scoreboard players get @s sourcecraft.temp

#set new motion
execute store result score @s sourcecraft.temp run data get entity @s Motion[1] 1000

#reset temp score
#scoreboard players reset @s sourcecraft.temp