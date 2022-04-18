# check right click

#tag
tag @s add plushpets.right_clicker

#get player ID
scoreboard players operation #player_ID sourcecraft.temp = @s sourcecraft.ID

#begin raycast
scoreboard players set #distance sourcecraft.temp 6
execute at @s run function plushpets.1:raycast/start_raycast

#locate plush pet
execute at @e[type=minecraft:marker,tag=raycast.ray,limit=1] positioned ~ ~-1.6 ~ as @e[type=minecraft:armor_stand,tag=plushpets.plush_pet,limit=1,sort=nearest,distance=..0.5] if score @s plushpets.ownerID = #player_ID sourcecraft.temp run function plushpets.1:run_plush_pet_right_click

#locate placed plush
execute if predicate plushpets.1:holding_glistering_melon_slice at @e[type=minecraft:marker,tag=raycast.ray,limit=1] if entity @e[type=minecraft:area_effect_cloud,distance=..1,tag=plushpets.weakness_effect] if block ~ ~ ~ #plushpets.1:player_heads run function plushpets.1:init_animate_plush_phase_two

#reset
tag @s remove plushpets.right_clicker
advancement revoke @s only plushpets.1:name_plush_pet