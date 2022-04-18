# run plush pet breeding with other pet

#particles
execute positioned ^ ^ ^0.1 run particle minecraft:heart ~ ~2 ~ 0.3 0.1 0.3 0.2 4 normal

#spawn egg entity
execute positioned ^ ^ ^0.1 run summon minecraft:armor_stand ~ ~0.75 ~ {Marker:1b,CustomName:'{"text":"Plush Egg"}',Small:1b,DisabledSlots:4144959,Invulnerable:1b,Invisible:1b,NoGravity:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{plushpets:{egg:"true"},display:{Name:'{"text":"Plush Egg","italic":false,"color":"aqua"}'},SkullOwner:{Id:[I;-1059486911,-1871885820,-1311224596,1015123636],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTkwYWExMzJiYzM3YzY1ZTY2NGFlMDMzNmUzNzYzMDRlZmFhNGQ0NTk0YjY3OGQ0ODkxYjMxOTZmOTRhMTRiZSJ9fX0="}]}}}}],Tags:["plushpets.plush_entity","plushpets.plush_egg","plushpets.plush_egg_init","plushpets.plush_entity_small"]}

#determine egg plush type
function plushpets.1:determine_plush_egg_type

#determine xp
scoreboard players set #RNG sourcecraft.min 1
scoreboard players set #RNG sourcecraft.max 7
function #sourcecraft:generate_random_number
summon minecraft:experience_orb ~ ~0.75 ~ {Tags:["plushpets.xp_init"]}
execute store result entity @e[type=minecraft:experience_orb,tag=plushpets.xp_init,limit=1] Value short 1 run scoreboard players get #RNG sourcecraft.num

#schedule hatch
execute store result score @e[type=minecraft:armor_stand,tag=plushpets.plush_egg_init,limit=1] plushpets.hatchT run time query gametime
scoreboard players add @e[type=minecraft:armor_stand,tag=plushpets.plush_egg_init,limit=1] plushpets.hatchT 12000
schedule function plushpets.1:schedule_plush_egg_hatch 12000t append

#reset tags
tag @e[type=minecraft:armor_stand,tag=plushpets.plush_egg_init] remove plushpets.plush_egg_init

#remove tags
tag @s remove plushpets.is_breeding
tag @s remove plushpets.can_breed
tag @s remove plushpets.breed_init
tag @e[type=minecraft:experience_orb,tag=plushpets.xp_init] remove plushpets.xp_init
tag @e[type=minecraft:armor_stand,tag=plushpets.breed_partner_found] remove plushpets.is_breeding
tag @e[type=minecraft:armor_stand,tag=plushpets.breed_partner_found] remove plushpets.can_breed
tag @e[type=minecraft:armor_stand,tag=plushpets.breed_partner_found] remove plushpets.breed_init

#schedule love cooldown
execute store result score @s plushpets.loveC run time query gametime
scoreboard players add @s plushpets.loveC 6000
execute store result score @e[type=minecraft:armor_stand,tag=plushpets.breed_partner_found] plushpets.loveC run time query gametime
scoreboard players add @e[type=minecraft:armor_stand,tag=plushpets.breed_partner_found] plushpets.loveC 6000
schedule function plushpets.1:schedule_end_love_cooldown 6000t append