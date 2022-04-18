# run raycast

#if hit block
execute unless block ~ ~ ~ #sourcecraft.3:passable run scoreboard players set #raycast_hit sourcecraft.temp 1

#if hit entity (non-player)
execute if entity @e[type=!minecraft:player,distance=..0.1] run scoreboard players set #raycast_hit sourcecraft.temp 1

#mark that the ray has traveled one more time
scoreboard players add #raycast_distance_traveled sourcecraft.temp 1

#debug
#tellraw @a {"score":{"name":"#raycast_distance","objective":"sourcecraft.temp"}}
#tellraw @a {"score":{"name":"#raycast_hit","objective":"sourcecraft.temp"}}
#tellraw @a {"score":{"name":"#raycast_distance_traveled","objective":"sourcecraft.temp"}}

#if hit found: end
execute if score #raycast_hit sourcecraft.temp matches 1 run function sourcecraft.3:raycast/simple/end

#else: continue
execute if score #raycast_hit sourcecraft.temp matches 0 unless score #raycast_distance_traveled sourcecraft.temp = #raycast_distance sourcecraft.temp positioned ^ ^ ^0.1 run function sourcecraft.3:raycast/simple/run