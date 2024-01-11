# pathfinds pet to player

#face player
execute unless block ~ ~1.4 ~ #plushpets:passable facing entity @a[tag=plushpets.pet_pathfind_to_player,limit=1] feet run tp ^ ^ ^0.2

#if too far, teleport to player
execute if entity @a[tag=plushpets.pet_pathfind_to_player,limit=1,distance=30..] at @a[tag=plushpets.pet_pathfind_to_player,limit=1,distance=30..] unless block ~ ~-1 ~ #plushpets:passable run tp ~ ~-1.4 ~

#remove tag
execute if entity @a[tag=plushpets.pet_pathfind_to_player,limit=1,distance=..5] run tag @s remove plushpets.keep_pathfinding_to_player