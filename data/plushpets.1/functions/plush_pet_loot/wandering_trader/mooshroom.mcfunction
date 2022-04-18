# mooshroom plush

#random chance
function #sourcecraft:generate_random_number

#place plush
execute unless score #plushpets.generated_loot sourcecraft.temp matches 1.. if score #RNG sourcecraft.num matches 1..15 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:1,xp:1,priceMultiplier:0.05f,specialPrice:0,demand:0,buy:{id:"minecraft:emerald",Count:35b},sell:{id:"minecraft:player_head",Count:1b,tag:{plushpets:{plush:"true"},display:{Name:'{"text":"Mooshroom Plush","italic":"false","color":"aqua"}'},SkullOwner:{Id:[I;-913494377,9914691,-1828146354,-1330008468],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDg2OTU3ZjRkZDAzMzgxMzAyNDMyZDhjNWI3MjhjNDczN2YzN2JjOTIwMzMwNzljNzE1MzAzNGJlNGZjNzliMCJ9fX0="}]}}}}}
execute unless score #plushpets.generated_loot sourcecraft.temp matches 1.. if score #RNG sourcecraft.num matches 1..15 run scoreboard players set #plushpets.generated_loot sourcecraft.temp 1