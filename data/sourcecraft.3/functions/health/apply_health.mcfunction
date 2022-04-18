# apply change to player's current health

#store health value set by calling function for calculating on
scoreboard players operation #health_difference sourcecraft.temp = #apply_health sourcecraft.temp

#flip the health value (so that a positive applied health value means healing, and negative means damage)
scoreboard players operation #health_difference sourcecraft.temp *= #-1 sourcecraft.data

#get player's current max health
execute store result score #max_health sourcecraft.temp run attribute @s minecraft:generic.max_health get

#get player's current health
execute store result score #current_health sourcecraft.temp run data get entity @s Health

#calculate health difference after applied health value (Maximum Health - Current Health)
scoreboard players operation #health_difference sourcecraft.temp += #max_health sourcecraft.temp
scoreboard players operation #health_difference sourcecraft.temp -= #current_health sourcecraft.temp

#if calculated difference in health after applied health value is more than their max health: kill
execute if score #health_difference sourcecraft.temp >= #max_health sourcecraft.temp run function #sourcecraft:run_custom_death

#else if calculated difference in health is negative: heal
execute if score #health_difference sourcecraft.temp < #max_health sourcecraft.temp if score #apply_health sourcecraft.temp matches 1.. run function sourcecraft.3:health/current/give_attributes

#else if calculated difference is more than 1 (ignoring 0): damage player
execute if score #health_difference sourcecraft.temp < #max_health sourcecraft.temp if score #apply_health sourcecraft.temp matches ..-1 run function sourcecraft.3:health/current/damage

#reset score from calculate function
scoreboard players reset #health_difference sourcecraft.temp