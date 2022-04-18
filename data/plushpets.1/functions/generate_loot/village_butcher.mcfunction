# generate village_butcher loot

#raycast to chest
scoreboard players set #distance sourcecraft.temp 6
execute at @s run function plushpets.1:raycast/start_raycast

#run tag
execute at @e[type=minecraft:marker,tag=raycast.ray,limit=1] run function #plushpets:generate_loot/village_butcher

#reset generated loot score
scoreboard players reset #plushpets.generated_loot sourcecraft.temp