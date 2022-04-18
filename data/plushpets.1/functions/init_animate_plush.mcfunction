# init animate plush

#check if plush pet
execute unless score #plushpets.option.allow_nonplush_pets sourcecraft.data matches 1 run function plushpets.1:utility/check_placed_plush_item
execute if score #plushpets.option.allow_nonplush_pets sourcecraft.data matches 1 run scoreboard players set #plushpets.is_plush sourcecraft.temp 1

#weakness effect
execute if score #plushpets.is_plush sourcecraft.temp matches 1 if entity @e[tag=plushpets.landed_potion,tag=plushpets.short_weakness_potion] align xyz positioned ~0.5 ~0.5 ~0.5 run summon area_effect_cloud ~ ~ ~ {Particle:"entity_effect",Radius:0.5f,Duration:1800,Color:4738376,Tags:["plushpets.weakness_effect","global.ignore"]}

#long weakness effect
execute if score #plushpets.is_plush sourcecraft.temp matches 1 if entity @e[tag=plushpets.landed_potion,tag=plushpets.long_weakness_potion] align xyz positioned ~0.5 ~0.5 ~0.5 run summon area_effect_cloud ~ ~ ~ {Particle:"entity_effect",Radius:0.5f,Duration:4800,Color:4738376,Tags:["plushpets.weakness_effect","global.ignore"]}