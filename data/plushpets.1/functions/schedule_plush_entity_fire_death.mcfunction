# checks for plush eggs to hatch

#get current gametime
execute store result score #current_gametime sourcecraft.temp run time query gametime

#end love time
execute as @e[type=minecraft:armor_stand,tag=plushpets.fire_death_init] if score @s plushpets.fireT = #current_gametime sourcecraft.temp at @s positioned ~ ~1.4 ~ run function plushpets.1:run_plush_entity_fire_death