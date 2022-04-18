# launches executing entity in the direction they are facing

execute store result score @s sourcecraft.x run data get entity @s Pos[0] 1000
execute store result score @s sourcecraft.y run data get entity @s Pos[1] 1000
execute store result score @s sourcecraft.z run data get entity @s Pos[2] 1000

tp @s ^ ^0.1 ^0.2

execute store result score @s sourcecraft.dx run data get entity @s Pos[0] 1000
execute store result score @s sourcecraft.dy run data get entity @s Pos[1] 1000
execute store result score @s sourcecraft.dz run data get entity @s Pos[2] 1000

tp @s ^ ^ ^-0.2

scoreboard players operation @s sourcecraft.dx -= @s sourcecraft.x
scoreboard players operation @s sourcecraft.dy -= @s sourcecraft.y
scoreboard players operation @s sourcecraft.dz -= @s sourcecraft.z

execute store result entity @s Motion[0] double 0.007 run scoreboard players get @s sourcecraft.dx
execute store result entity @s Motion[1] double 0.007 run scoreboard players get @s sourcecraft.dy
execute store result entity @s Motion[2] double 0.007 run scoreboard players get @s sourcecraft.dz