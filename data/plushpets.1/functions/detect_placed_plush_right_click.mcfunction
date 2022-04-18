# raycast to check if player is right clicking on plush pet

#begin raycast
scoreboard players set #distance sourcecraft.temp 6
execute at @s run function plushpets.1:raycast/start_raycast

#locate plush pet
execute at @e[type=minecraft:marker,tag=raycast.ray,limit=1] if block ~ ~ ~ #plushpets.1:player_heads run function plushpets.1:init_placed_plush_right_click_detect