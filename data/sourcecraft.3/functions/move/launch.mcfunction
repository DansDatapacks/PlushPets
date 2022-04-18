# launches executing entity forward

execute store result score @s sourcecraft.x run data get entity @s Pos[0] 1000
execute store result score @s sourcecraft.y run data get entity @s Pos[1] 1000
execute store result score @s sourcecraft.z run data get entity @s Pos[2] 1000

tp @s ^ ^ ^1

execute store result score @s sourcecraft.dx run data get entity @s Pos[0] 1000
execute store result score @s sourcecraft.dy run data get entity @s Pos[1] 1000
execute store result score @s sourcecraft.dz run data get entity @s Pos[2] 1000

scoreboard players operation @s sourcecraft.dx -= @s sourcecraft.x
scoreboard players operation @s sourcecraft.dy -= @s sourcecraft.y
scoreboard players operation @s sourcecraft.dz -= @s sourcecraft.z

#high gravity (falls faster)
execute store result entity @s[tag=sourcecraft.high_gravity] Motion[0] double 0.0007 run scoreboard players get @s sourcecraft.dx
execute store result entity @s[tag=sourcecraft.high_gravity] Motion[1] double 0.0007 run scoreboard players get @s sourcecraft.dy
execute store result entity @s[tag=sourcecraft.high_gravity] Motion[2] double 0.0007 run scoreboard players get @s sourcecraft.dz

#low gravity (falls slower/more distance)
execute store result entity @s[tag=sourcecraft.low_gravity] Motion[0] double 0.001 run scoreboard players get @s sourcecraft.dx
execute store result entity @s[tag=sourcecraft.low_gravity] Motion[1] double 0.001 run scoreboard players get @s sourcecraft.dy
execute store result entity @s[tag=sourcecraft.low_gravity] Motion[2] double 0.001 run scoreboard players get @s sourcecraft.dz