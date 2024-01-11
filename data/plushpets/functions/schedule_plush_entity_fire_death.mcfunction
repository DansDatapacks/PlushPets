# checks for plush eggs to hatch

#get current gametime
execute store result score #current_gametime plushpets.temp run time query gametime

#end love time
execute as @e[type=minecraft:armor_stand,tag=plushpets.fire_death_init] if score @s plushpets.fireT = #current_gametime plushpets.temp at @s positioned ~ ~1.4 ~ run function plushpets:run_plush_entity_fire_death