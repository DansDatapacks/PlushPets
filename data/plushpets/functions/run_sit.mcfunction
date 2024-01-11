# run right click

#check if sitting
execute if entity @s[tag=plushpets.plush_pet_sitting] run scoreboard players set @s plushpets.temp 1
execute unless entity @s[tag=plushpets.plush_pet_sitting] run scoreboard players set @s plushpets.temp 2

#unsit
execute if score @s plushpets.temp matches 1 run tag @s remove plushpets.plush_pet_sitting
execute if score @s plushpets.temp matches 1 rotated as @s run tp @s ~ ~0.5 ~
execute if score @s plushpets.temp matches 1 run playsound minecraft:item.armor.equip_leather neutral @a ~ ~ ~ 1 1.4

#sit
execute if score @s plushpets.temp matches 2 run tag @s add plushpets.plush_pet_sitting
execute if score @s plushpets.temp matches 2 run playsound minecraft:item.armor.equip_leather neutral @a ~ ~ ~ 1 0.8