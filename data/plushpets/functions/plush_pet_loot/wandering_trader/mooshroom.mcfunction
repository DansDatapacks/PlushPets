# mooshroom plush

#random chance
scoreboard players set #plushpets:rng.input plushpets.temp 100
function plushpets:utility/rng/rng
scoreboard players add #plushpets:rng.output plushpets.temp 1

#place plush
execute unless score #plushpets:generated_loot plushpets.temp matches 1.. if score #plushpets:rng.output plushpets.temp matches 1..25 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:1,xp:1,priceMultiplier:0.05f,specialPrice:0,demand:0,buy:{id:"minecraft:emerald",Count:35b},sell:{id:"minecraft:player_head",Count:1b,tag:{plushpets:{plush:"true"},display:{Name:'{"text":"Mooshroom Plush","italic":"false","color":"aqua"}'},SkullOwner:{Id:[I;-950111934,-917683585,-1636376833,-266642191],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGMyMWJhMTQ5YmM4MzY3ZjRiYmJmZGFhZDU4M2YxNmE4MzViZmEyOGVhNTVmYTUwNjg3NjBhODdmNDhjNmExZCJ9fX0="}]}}}}}
execute unless score #plushpets:generated_loot plushpets.temp matches 1.. if score #plushpets:rng.output plushpets.temp matches 1..25 run scoreboard players set #plushpets:generated_loot plushpets.temp 1