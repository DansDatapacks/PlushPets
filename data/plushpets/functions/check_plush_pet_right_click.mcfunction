# check right click

#tag
tag @s add plushpets.right_clicker

#get player ID
scoreboard players operation #player_ID plushpets.temp = @s plushpets.ID

#begin raycast
scoreboard players set #distance plushpets.temp 6
execute at @s run function plushpets:raycast/start_raycast

#locate plush pet
execute at @e[type=minecraft:marker,tag=raycast.ray,limit=1] positioned ~ ~-1.6 ~ as @e[type=minecraft:armor_stand,tag=plushpets.plush_pet,limit=1,sort=nearest,distance=..0.5] if score @s plushpets.ownerID = #player_ID plushpets.temp run function plushpets:run_plush_pet_right_click

#locate placed plush
execute if predicate plushpets:holding_glistering_melon_slice at @e[type=minecraft:marker,tag=raycast.ray,limit=1] if entity @e[type=minecraft:area_effect_cloud,distance=..1,tag=plushpets.weakness_effect] if block ~ ~ ~ #plushpets:player_heads run function plushpets:init_animate_plush_phase_two

#reset
tag @s remove plushpets.right_clicker
advancement revoke @s only plushpets:name_plush_pet