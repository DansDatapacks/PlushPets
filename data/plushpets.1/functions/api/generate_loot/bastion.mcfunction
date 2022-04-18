# runs if this core datapack is the newest version

#run if load status matches this core datapacks version
execute unless score #plushpets.option.no_plush_loot sourcecraft.data matches 1 if score #plushpets load.status matches 1 run function plushpets.1:generate_loot/bastion

#reset
advancement revoke @s only plushpets.1:generate_loot/bastion_bridge
advancement revoke @s only plushpets.1:generate_loot/bastion_other
advancement revoke @s only plushpets.1:generate_loot/bastion_treasure