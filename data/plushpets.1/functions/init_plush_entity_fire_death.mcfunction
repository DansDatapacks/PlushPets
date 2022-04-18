# plush entity die to fire

#tag
tag @s add plushpets.fire_death_init

#fire effect
data merge entity @s {Fire:30s}

#sound
playsound minecraft:entity.ghast.shoot neutral @a ~ ~ ~ 1 1.2

#schedule fire death
execute store result score @s plushpets.fireT run time query gametime
scoreboard players add @s plushpets.fireT 20
schedule function plushpets.1:schedule_plush_entity_fire_death 20t append