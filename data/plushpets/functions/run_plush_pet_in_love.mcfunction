# run in love

#particle
particle minecraft:heart ~ ~2 ~ 0.3 0.1 0.3 0.2 4 normal
execute at @s rotated as @s positioned ^ ^ ^0.5 run particle minecraft:item minecraft:feather ~ ~1.4 ~ 0 0 0 0.1 10 normal

#sound
playsound minecraft:entity.generic.eat block @a ~ ~ ~ 1 1.4

#remove feather from player
clear @a[tag=plushpets.right_clicker,gamemode=!creative] minecraft:feather 1

#tag
tag @s add plushpets.can_breed
tag @s add plushpets.in_love

#schedule end of love time
execute store result score @s plushpets.loveT run time query gametime
scoreboard players add @s plushpets.loveT 600
schedule function plushpets:schedule_end_love_time 600t append