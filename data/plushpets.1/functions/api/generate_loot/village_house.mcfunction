# runs if this core datapack is the newest version

#run if load status matches this core datapacks version
execute unless score #plushpets.option.no_plush_loot sourcecraft.data matches 1 if score #plushpets load.status matches 1 run function plushpets.1:generate_loot/village_house

#reset
advancement revoke @s only plushpets.1:generate_loot/village_plains_house
advancement revoke @s only plushpets.1:generate_loot/village_savanna_house
advancement revoke @s only plushpets.1:generate_loot/village_snowy_house
advancement revoke @s only plushpets.1:generate_loot/village_taiga_house