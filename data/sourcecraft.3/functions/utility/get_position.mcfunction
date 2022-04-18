# get executors pition

#X position
scoreboard players operation @s sourcecraft.pXp = @s sourcecraft.pX
execute store result score @s sourcecraft.pX run data get entity @s Pos[0] 1000000
#execute store result score @s sourcecraft.pXr run data get entity @s Rotation[0] 1000000
scoreboard players operation @s sourcecraft.pXf = @s sourcecraft.pX
scoreboard players operation @s sourcecraft.pXf -= @s sourcecraft.pXp
scoreboard players operation @s sourcecraft.pXf *= #3 sourcecraft.data
scoreboard players operation @s sourcecraft.pXf += @s sourcecraft.pX

#Y position
scoreboard players operation @s sourcecraft.pYp = @s sourcecraft.pY
execute store result score @s sourcecraft.pY run data get entity @s Pos[1] 1000000
#execute store result score @s sourcecraft.pYr run data get entity @s Rotation[1] 1000000
scoreboard players operation @s sourcecraft.pYf = @s sourcecraft.pY
scoreboard players operation @s sourcecraft.pYf -= @s sourcecraft.pYp
scoreboard players operation @s sourcecraft.pYf *= #3 sourcecraft.data
scoreboard players operation @s sourcecraft.pYf += @s sourcecraft.pY

#Z position
scoreboard players operation @s sourcecraft.pZp = @s sourcecraft.pZ
execute store result score @s sourcecraft.pZ run data get entity @s Pos[2] 1000000
scoreboard players operation @s sourcecraft.pZf = @s sourcecraft.pZ
scoreboard players operation @s sourcecraft.pZf -= @s sourcecraft.pZp
scoreboard players operation @s sourcecraft.pZf *= #3 sourcecraft.data
scoreboard players operation @s sourcecraft.pZf += @s sourcecraft.pZ