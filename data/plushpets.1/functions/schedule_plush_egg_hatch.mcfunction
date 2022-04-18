# checks for plush eggs to hatch

#get current gametime
execute store result score #current_gametime sourcecraft.temp run time query gametime

#end love time
execute as @e[type=minecraft:armor_stand,tag=plushpets.plush_egg] if score @s plushpets.hatchT = #current_gametime sourcecraft.temp at @s run function plushpets.1:run_plush_egg_hatch