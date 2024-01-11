# inits plush pets breeding

#init loveID
function plushpets:utility/init_love_id
scoreboard players operation @e[type=minecraft:armor_stand,tag=plushpets.breeding_partner,limit=1] plushpets.loveID = @s plushpets.loveID

#tag
tag @s add plushpets.is_breeding
tag @e[type=minecraft:armor_stand,tag=plushpets.breeding_partner,limit=1] add plushpets.is_breeding
tag @s remove plushpets.keep_pathfinding_to_player
tag @e[type=minecraft:armor_stand,tag=plushpets.breeding_partner,limit=1] remove plushpets.keep_pathfinding_to_player
tag @e[type=minecraft:armor_stand,tag=plushpets.breeding_partner] remove plushpets.breeding_partner