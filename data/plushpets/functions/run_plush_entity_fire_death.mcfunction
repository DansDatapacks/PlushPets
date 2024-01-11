# plush entity die to fire

#if still on fire
execute store result score @s plushpets.temp run data get entity @s Fire

#particles
execute if score @s plushpets.temp matches 1.. positioned ~ ~0.8 ~ run particle minecraft:large_smoke ~ ~ ~ 0.1 0.1 0.1 0 8

#sound
execute if score @s plushpets.temp matches 1.. positioned ~ ~0.8 ~ run playsound minecraft:block.fire.extinguish neutral @a ~ ~ ~ 1 1.2

#kill
execute if score @s plushpets.temp matches 1.. run kill @s

#reset
tag @s remove plushpets.fire_death_init
scoreboard players reset @s plushpets.fireT