# edit player's max health attribute

#store applied max health value
scoreboard players operation #max_value_change sourcecraft.temp = #apply_max_health sourcecraft.temp

#multiply set applied max health value by a multiple of 100
scoreboard players operation #max_value_change sourcecraft.temp *= #100 sourcecraft.data

#get player's current max health
execute store result score #max_health sourcecraft.temp run attribute @s minecraft:generic.max_health get 100

#get player's current base max health
execute store result score #max_health_base sourcecraft.temp run attribute @s minecraft:generic.max_health base get 100

#calculate player's extra max health given by modifiers only
scoreboard players operation #max_health sourcecraft.temp -= #max_health_base sourcecraft.temp

#calculate max health that must be given
scoreboard players operation #max_health_difference sourcecraft.temp = #max_health sourcecraft.temp
scoreboard players operation #max_health_difference sourcecraft.temp += #max_value_change sourcecraft.temp

#if you're subtracting max health, then make sure to update their health bar
execute if score #max_health_difference sourcecraft.temp matches ..-1 run scoreboard players set #update_healthbar sourcecraft.temp 1

#reset attributes
function sourcecraft.3:health/max/reset_attributes

#use binary calculations to set the proper attributes player needs
execute if score #max_health_difference sourcecraft.temp matches 65536.. run function sourcecraft.3:health/max/apply_attributes/65536
execute if score #max_health_difference sourcecraft.temp matches 32768.. run function sourcecraft.3:health/max/apply_attributes/32768
execute if score #max_health_difference sourcecraft.temp matches 16384.. run function sourcecraft.3:health/max/apply_attributes/16384
execute if score #max_health_difference sourcecraft.temp matches 8192.. run function sourcecraft.3:health/max/apply_attributes/8192
execute if score #max_health_difference sourcecraft.temp matches 4096.. run function sourcecraft.3:health/max/apply_attributes/4096
execute if score #max_health_difference sourcecraft.temp matches 2048.. run function sourcecraft.3:health/max/apply_attributes/2048
execute if score #max_health_difference sourcecraft.temp matches 1024.. run function sourcecraft.3:health/max/apply_attributes/1024
execute if score #max_health_difference sourcecraft.temp matches 512.. run function sourcecraft.3:health/max/apply_attributes/512
execute if score #max_health_difference sourcecraft.temp matches 256.. run function sourcecraft.3:health/max/apply_attributes/256
execute if score #max_health_difference sourcecraft.temp matches 128.. run function sourcecraft.3:health/max/apply_attributes/128
execute if score #max_health_difference sourcecraft.temp matches 64.. run function sourcecraft.3:health/max/apply_attributes/64
execute if score #max_health_difference sourcecraft.temp matches 32.. run function sourcecraft.3:health/max/apply_attributes/32
execute if score #max_health_difference sourcecraft.temp matches 16.. run function sourcecraft.3:health/max/apply_attributes/16
execute if score #max_health_difference sourcecraft.temp matches 8.. run function sourcecraft.3:health/max/apply_attributes/8
execute if score #max_health_difference sourcecraft.temp matches 4.. run function sourcecraft.3:health/max/apply_attributes/4
execute if score #max_health_difference sourcecraft.temp matches 2.. run function sourcecraft.3:health/max/apply_attributes/2
execute if score #max_health_difference sourcecraft.temp matches 1.. run function sourcecraft.3:health/max/apply_attributes/1

#update player health
execute if score #update_healthbar sourcecraft.temp matches 1 at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,Effects:[{Id:20b,Amplifier:5b,Duration:1,ShowParticles:0b},{Id:10b,Amplifier:5b,Duration:1,ShowParticles:0b}]}

#reset temp scores
scoreboard players reset #max_health sourcecraft.temp
scoreboard players reset #max_health_base sourcecraft.temp
scoreboard players reset #max_health_difference sourcecraft.temp
scoreboard players reset #update_healthbar sourcecraft.temp