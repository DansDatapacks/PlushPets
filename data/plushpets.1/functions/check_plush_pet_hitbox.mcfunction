# handles the hitbox of the plush pets

#tag self
tag @s add plushpets.self

#plush entities -> other entities
execute if entity @e[type=!#sourcecraft.3:no_hitbox,tag=!plushpets.self,tag=!global.ignore,distance=..0.7] run function plushpets.1:handle_plush_pet_hitbox

#plush entities -> plush entities
execute if entity @s[tag=plushpets.plush_pet] positioned ~ ~-1.8 ~ if entity @e[type=minecraft:armor_stand,tag=plushpets.plush_pet,tag=!plushpets.self,tag=!global.ignore,distance=..0.7] run function plushpets.1:handle_plush_pet_hitbox
execute if entity @s[tag=plushpets.plush_pet] positioned ~ ~-1.4 ~ if entity @e[type=minecraft:armor_stand,tag=plushpets.plush_entity_small,tag=!plushpets.self,tag=!global.ignore,distance=..0.7] run function plushpets.1:handle_plush_pet_hitbox

execute if entity @s[tag=plushpets.plush_entity_small] positioned ~ ~-1.4 ~ if entity @e[type=minecraft:armor_stand,tag=plushpets.plush_pet,tag=!plushpets.self,tag=!global.ignore,distance=..0.7] run function plushpets.1:handle_plush_pet_hitbox
execute if entity @s[tag=plushpets.plush_entity_small] positioned ~ ~-0.73 ~ if entity @e[type=minecraft:armor_stand,tag=plushpets.plush_entity_small,tag=!plushpets.self,tag=!global.ignore,distance=..0.7] run function plushpets.1:handle_plush_pet_hitbox

#tag self
tag @s remove plushpets.self