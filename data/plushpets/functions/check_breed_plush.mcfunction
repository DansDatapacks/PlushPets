# checks if a pet should pathfind to player

#get pet's love ID
scoreboard players operation #love_ID plushpets.temp = @s plushpets.loveID

#if other in love plushpet found and is close enough, tag them
execute as @e[type=minecraft:armor_stand,tag=plushpets.plush_pet] if score @s plushpets.loveID = #love_ID plushpets.temp run tag @s add plushpets.breed_partner_found

#if other in love plushpet found and is close enough, pathfind
execute if entity @e[type=minecraft:armor_stand,tag=plushpets.breed_partner_found,distance=0.01..1] run function plushpets:run_plush_pet_breed

#reset tags
scoreboard players reset @e[type=minecraft:armor_stand,tag=plushpets.breed_partner_found] plushpets.loveID
scoreboard players reset @s plushpets.loveID
scoreboard players reset @e[type=minecraft:armor_stand,tag=plushpets.breed_partner_found] plushpets.breedT
scoreboard players reset @s plushpets.breedT
tag @e[type=minecraft:armor_stand,tag=plushpets.breed_partner_found] remove plushpets.breed_partner_found