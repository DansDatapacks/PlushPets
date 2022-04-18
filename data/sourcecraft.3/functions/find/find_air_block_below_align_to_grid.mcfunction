# teleport down until it finds an air block

#tp down
execute at @s unless block ~ ~ ~ minecraft:air run tp ~ ~-1 ~

#loop
execute at @s unless block ~ ~ ~ minecraft:air run function sourcecraft.3:find/find_air_block_below_align_to_grid