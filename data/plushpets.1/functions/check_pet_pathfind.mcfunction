# checks if a pet should pathfind to player

#tag
tag @s add plushpets.self

#get pet's ID
scoreboard players operation #pet_ID sourcecraft.temp = @s plushpets.ownerID

#if player ID matches pet ID, tag them
execute as @a if score @s sourcecraft.ID = #pet_ID sourcecraft.temp run tag @s add plushpets.pet_pathfind_to_player

#if player found and is far enough, pathfind
execute if entity @a[tag=plushpets.pet_pathfind_to_player,distance=9..] run tag @s add plushpets.keep_pathfinding_to_player

#if nearby player is holding feather, follow
execute as @a[tag=plushpets.pet_pathfind_to_player,distance=2..5] if predicate plushpets.1:holding_feather run tag @e[type=minecraft:armor_stand,tag=!plushpets.in_love,tag=plushpets.self] add plushpets.keep_pathfinding_to_player

#pathfind
execute as @s[tag=plushpets.keep_pathfinding_to_player] run function plushpets.1:run_pet_pathfind

#reset tags
tag @a[tag=plushpets.pet_pathfind_to_player] remove plushpets.pet_pathfind_to_player
tag @s remove plushpets.self