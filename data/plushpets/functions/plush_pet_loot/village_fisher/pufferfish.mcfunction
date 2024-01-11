# pufferfish plush

#random chance
scoreboard players set #plushpets:rng.input plushpets.temp 100
function plushpets:utility/rng/rng
scoreboard players add #plushpets:rng.output plushpets.temp 1

#place plush
execute unless score #plushpets:generated_loot plushpets.temp matches 1.. if score #plushpets:rng.output plushpets.temp matches 1..40 run loot insert ~ ~ ~ loot plushpets:plush/pufferfish
execute unless score #plushpets:generated_loot plushpets.temp matches 1.. if score #plushpets:rng.output plushpets.temp matches 1..40 run scoreboard players set #plushpets:generated_loot plushpets.temp 1