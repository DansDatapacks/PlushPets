# inits plush pets breeding

#particles
execute positioned ^ ^ ^0.1 run particle minecraft:heart ~ ~2 ~ 0.3 0.1 0.3 0.2 4 normal

#schedule breed
execute store result score @s plushpets.breedT run time query gametime
scoreboard players add @s plushpets.breedT 40
schedule function plushpets:schedule_breed_plush 40t append

#tag
tag @s add plushpets.breed_init
tag @e[type=minecraft:armor_stand,tag=plushpets.breed_partner_found] add plushpets.breed_init