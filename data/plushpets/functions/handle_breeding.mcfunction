# handle plush pets that can breed

#tag
tag @s add plushpets.self

#tag plush that can also breed
execute unless score @s plushpets.loveID matches 1.. as @e[type=minecraft:armor_stand,tag=plushpets.can_breed,tag=!plushpets.plush_pet_sitting,tag=!plushpets.self,distance=0.01..5,limit=1] unless score @s plushpets.loveID matches 1.. run tag @s add plushpets.breeding_partner
execute unless score @s plushpets.loveID matches 1.. if entity @e[type=minecraft:armor_stand,tag=plushpets.breeding_partner] run function plushpets:init_breed_partners

#get pet's ID
execute if score @s plushpets.loveID matches 1.. run scoreboard players operation #love_ID plushpets.temp = @s plushpets.loveID

#if player matches ID, tag them
execute if score @s plushpets.loveID matches 1.. as @e[type=minecraft:armor_stand,tag=plushpets.plush_pet,tag=!plushpets.self] if score @s plushpets.loveID = #love_ID plushpets.temp run tag @s add plushpets.breed_partner_found

#move towards partner
execute if score @s plushpets.loveID matches 1.. if entity @e[type=minecraft:armor_stand,tag=plushpets.breed_partner_found] facing entity @e[type=minecraft:armor_stand,tag=plushpets.breed_partner_found,limit=1] feet run tp ~ ~ ~
execute if score @s plushpets.loveID matches 1.. if entity @e[type=minecraft:armor_stand,tag=plushpets.breed_partner_found,distance=0.8..] facing entity @e[type=minecraft:armor_stand,tag=plushpets.breed_partner_found,limit=1] feet run tp ^ ^ ^0.06

#when close, breed
execute if score @s plushpets.loveID matches 1.. if entity @e[type=minecraft:armor_stand,tag=plushpets.breed_partner_found,distance=0.01..1,tag=!plushpets.breed_init] run function plushpets:init_plush_pet_breed

#reset
tag @e[type=minecraft:armor_stand,tag=plushpets.breed_partner_found] remove plushpets.breed_partner_found
scoreboard players reset #love_ID plushpets.temp
tag @s remove plushpets.self