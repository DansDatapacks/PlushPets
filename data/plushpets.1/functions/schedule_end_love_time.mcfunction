# checks for plushes to end their love time

#get current gametime
execute store result score #current_gametime sourcecraft.temp run time query gametime

#end love time
execute as @e[type=minecraft:armor_stand,tag=plushpets.in_love] if score @s plushpets.loveT = #current_gametime sourcecraft.temp run function plushpets.1:end_love_time