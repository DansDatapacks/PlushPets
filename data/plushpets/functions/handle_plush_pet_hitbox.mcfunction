# handles the hitbox of the plush pets

#tag self
tag @s add plushpets.self

#tag entity to push away from
tag @e[type=!#plushpets:no_hitbox,distance=..0.7,tag=!plushpets.self,tag=!global.ignore,limit=1,sort=nearest] add plushpets.push_from_entity
execute unless entity @e[tag=plushpets.push_from_entity,limit=1,sort=nearest] positioned ~ ~2 ~ run tag @e[type=!#plushpets:no_hitbox,distance=..0.7,tag=plushpets.plush_entity_small,tag=!plushpets.self,tag=!global.ignore,limit=1,sort=nearest] add plushpets.push_from_entity

#spread entities in same position
execute if entity @e[distance=..0.1,tag=plushpets.push_from_entity] run spreadplayers ~ ~ 1 1 false @s

#entity type
execute as @e[tag=plushpets.push_from_entity,limit=1,sort=nearest] unless entity @s[tag=plushpets.plush_entity] run scoreboard players set #entity_type plushpets.temp 1
execute as @e[tag=plushpets.push_from_entity,limit=1,sort=nearest] if entity @s[tag=plushpets.plush_entity] run scoreboard players set #entity_type plushpets.temp 2

#push from player
execute if score #entity_type plushpets.temp matches 1 if entity @s[tag=plushpets.plush_pet] facing entity @e[tag=plushpets.push_from_entity,limit=1,sort=nearest] feet rotated ~180 ~ positioned ~ ~-1.4 ~ run tp @s ^ ^ ^0.5
execute if score #entity_type plushpets.temp matches 1 if entity @s[tag=plushpets.plush_entity_small] facing entity @e[tag=plushpets.push_from_entity,limit=1,sort=nearest] feet rotated ~180 ~ positioned ~ ~-1 ~ run tp @s ^ ^ ^0.3

#push from other plush entity
execute if score #entity_type plushpets.temp matches 2 if entity @s[tag=plushpets.plush_pet] facing entity @e[tag=plushpets.push_from_entity,tag=plushpets.plush_pet,limit=1,sort=nearest] feet rotated ~180 ~ run tp @s ^ ^ ^0.1
execute if score #entity_type plushpets.temp matches 2 if entity @s[tag=plushpets.plush_pet] facing entity @e[tag=plushpets.push_from_entity,tag=plushpets.plush_entity_small,limit=1,sort=nearest] feet rotated ~180 ~ positioned ~ ~-0.55 ~ run tp @s ^ ^ ^0.1
execute if score #entity_type plushpets.temp matches 2 if entity @s[tag=plushpets.plush_entity_small] facing entity @e[tag=plushpets.push_from_entity,tag=plushpets.plush_entity_small,limit=1,sort=nearest] feet rotated ~180 ~ run tp @s ^ ^ ^0.1
execute if score #entity_type plushpets.temp matches 2 if entity @s[tag=plushpets.plush_entity_small] facing entity @e[tag=plushpets.push_from_entity,tag=plushpets.plush_pet,limit=1,sort=nearest] feet rotated ~180 ~ positioned ~ ~0.35 ~ run tp @s ^ ^ ^0.1

#reset
tag @e[tag=plushpets.push_from_entity] remove plushpets.push_from_entity
scoreboard players reset #entity_type plushpets.temp
tag @s remove plushpets.self