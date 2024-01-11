# run raycast

#if hit block
execute unless block ~ ~ ~ #plushpets:passable run scoreboard players set #hit plushpets.temp 1
execute if entity @e[type=!minecraft:player,distance=..0.1] run scoreboard players set #hit plushpets.temp 1
execute positioned ~ ~-1.6 ~ if entity @e[type=minecraft:armor_stand,tag=plushpets.plush_pet,distance=..0.5] run scoreboard players set #hit plushpets.temp 1

#increase distance
scoreboard players add #distanceTraveled plushpets.temp 1

# tellraw @a {"score":{"name":"#distance","objective":"plushpets.temp"}}
# tellraw @a {"score":{"name":"#hit","objective":"plushpets.temp"}}
# tellraw @a {"score":{"name":"#distanceTraveled","objective":"plushpets.temp"}}

#summon entity where hit
execute if score #hit plushpets.temp matches 1 run function plushpets:raycast/end_raycast

#continue ray
execute if score #hit plushpets.temp matches 0 unless score #distanceTraveled plushpets.temp = #distance plushpets.temp positioned ^ ^ ^0.1 run function plushpets:raycast/run_raycast