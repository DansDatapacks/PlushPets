# checks for plush eggs to hatch

#get current gametime
execute store result score #current_gametime sourcecraft.temp run time query gametime

#end love time
execute as @e[type=minecraft:armor_stand,tag=plushpets.plush_pet,tag=plushpets.is_breeding] if score @s plushpets.breedT = #current_gametime sourcecraft.temp at @s run function plushpets.1:check_breed_plush