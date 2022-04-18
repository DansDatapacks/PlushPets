# syncs position of executing entity with desired entity

#use calculated predicted coords to teleport the executor to where the player supposedly is
execute store result entity @s Pos[0] double 0.000001 run scoreboard players get @e[tag=sourcecraft.position_sync_entity,limit=1] sourcecraft.pXf
execute store result entity @s Pos[1] double 0.000001 run scoreboard players get @e[tag=sourcecraft.position_sync_entity,limit=1] sourcecraft.pYf
execute store result entity @s Pos[2] double 0.000001 run scoreboard players get @e[tag=sourcecraft.position_sync_entity,limit=1] sourcecraft.pZf

#tp the executor to itself to fix a lot of wobbly behaviour
tp @s @s

#reset tags
tag @e[tag=sourcecraft.position_sync_entity,limit=1] remove sourcecraft.position_sync_entity