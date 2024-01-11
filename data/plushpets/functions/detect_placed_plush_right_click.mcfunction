# raycast to check if player is right clicking on plush pet

#begin raycast
scoreboard players set #distance plushpets.temp 6
execute at @s run function plushpets:raycast/start_raycast

#locate plush pet
execute at @e[type=minecraft:marker,tag=raycast.ray,limit=1] if block ~ ~ ~ #plushpets:player_heads run function plushpets:init_placed_plush_right_click_detect