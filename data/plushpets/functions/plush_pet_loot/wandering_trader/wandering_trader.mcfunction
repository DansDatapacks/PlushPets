# wandering trader plush

#random chance
scoreboard players set #plushpets:rng.input plushpets.temp 100
function plushpets:utility/rng/rng
scoreboard players add #plushpets:rng.output plushpets.temp 1

#place plush
execute unless score #plushpets:generated_loot plushpets.temp matches 1.. if score #plushpets:rng.output plushpets.temp matches 1..45 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:1,xp:1,priceMultiplier:0.05f,specialPrice:0,demand:0,buy:{id:"minecraft:emerald",Count:35b},sell:{id:"minecraft:player_head",Count:1b,tag:{plushpets:{plush:"true"},display:{Name:'{"text":"Wandering Trader Plush","italic":"false","color":"aqua"}'},SkullOwner:{Id:[I;1464190660,-2114565279,-1846848427,1639059880],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDViNjQ4NGNiOGE3NWNkZjgwMTE3ZmI2Mzc1ZGIyMDhjZGI1NjAzYTkwNDQ3NTVkMTg3N2NlNGFiYWE0ZjZmNSJ9fX0="}]}}}}}
execute unless score #plushpets:generated_loot plushpets.temp matches 1.. if score #plushpets:rng.output plushpets.temp matches 1..45 run scoreboard players set #plushpets:generated_loot plushpets.temp 1