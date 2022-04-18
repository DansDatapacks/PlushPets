# run raycast

#if hit block
execute unless block ~ ~ ~ #sourcecraft.3:passable run scoreboard players set #hit sourcecraft.temp 1
execute if entity @e[type=!minecraft:player,distance=..0.1] run scoreboard players set #hit sourcecraft.temp 1
execute positioned ~ ~-1.6 ~ if entity @e[type=minecraft:armor_stand,tag=plushpets.plush_pet,distance=..0.5] run scoreboard players set #hit sourcecraft.temp 1

#increase distance
scoreboard players add #distanceTraveled sourcecraft.temp 1

#tellraw @a {"score":{"name":"#distance","objective":"sourcecraft.temp"}}
#tellraw @a {"score":{"name":"#hit","objective":"sourcecraft.temp"}}
#tellraw @a {"score":{"name":"#distanceTraveled","objective":"sourcecraft.temp"}}

#summon entity where hit
execute if score #hit sourcecraft.temp matches 1 run function plushpets.1:raycast/end_raycast

#continue ray
execute if score #hit sourcecraft.temp matches 0 unless score #distanceTraveled sourcecraft.temp = #distance sourcecraft.temp positioned ^ ^ ^0.1 run function plushpets.1:raycast/run_raycast