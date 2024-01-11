# generate abandoned mineshaft loot

#tag
tag @s add plushpets.wandering_trader_init

#run tag
execute as @s run function #plushpets:generate_loot/wandering_trader

#reset generated loot score
scoreboard players reset #plushpets:generated_loot plushpets.temp