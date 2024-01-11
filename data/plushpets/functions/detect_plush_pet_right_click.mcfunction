# raycast to check if player is right clicking on plush pet

#begin raycast
scoreboard players set #distance plushpets.temp 6
execute at @s run function plushpets:raycast/start_raycast

#locate plush pet
execute at @e[type=minecraft:marker,tag=raycast.ray,limit=1] positioned ~ ~-1.6 ~ as @e[type=minecraft:armor_stand,tag=plushpets.plush_pet,limit=1,sort=nearest,distance=..0.5] run function plushpets:init_plush_pet_right_click_detect