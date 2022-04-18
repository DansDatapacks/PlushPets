# sets players max health to current health they should have

#tag player for attribute removal in 2 ticks
tag @s add sourcecraft.health.applied_health

#set players max health to the calculated current health using sourcecraft so that the players health can be changed
execute if score #health_difference sourcecraft.temp matches 1024.. run function sourcecraft.3:health/current/apply_attributes/1024
execute if score #health_difference sourcecraft.temp matches 512.. run function sourcecraft.3:health/current/apply_attributes/512
execute if score #health_difference sourcecraft.temp matches 256.. run function sourcecraft.3:health/current/apply_attributes/256
execute if score #health_difference sourcecraft.temp matches 128.. run function sourcecraft.3:health/current/apply_attributes/128
execute if score #health_difference sourcecraft.temp matches 64.. run function sourcecraft.3:health/current/apply_attributes/64
execute if score #health_difference sourcecraft.temp matches 32.. run function sourcecraft.3:health/current/apply_attributes/32
execute if score #health_difference sourcecraft.temp matches 16.. run function sourcecraft.3:health/current/apply_attributes/16
execute if score #health_difference sourcecraft.temp matches 8.. run function sourcecraft.3:health/current/apply_attributes/8
execute if score #health_difference sourcecraft.temp matches 4.. run function sourcecraft.3:health/current/apply_attributes/4
execute if score #health_difference sourcecraft.temp matches 2.. run function sourcecraft.3:health/current/apply_attributes/2
execute if score #health_difference sourcecraft.temp matches 1.. run function sourcecraft.3:health/current/apply_attributes/1

#schedual removal of temp attributes
schedule function sourcecraft.3:health/current/remove_attributes 2t

#force update health
execute unless entity @s[type=#sourcecraft.3:undead] run effect give @s minecraft:instant_health 1 24 true
execute if entity @s[type=#sourcecraft.3:undead] run effect give @s minecraft:instant_damage 1 24 true