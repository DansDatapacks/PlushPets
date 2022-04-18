# gives all new players IDs

#give ID
execute as @a[tag=!sourcecraft.init_ID] run function sourcecraft.3:utility/give_id

#tag so it doesnt run on them again
execute as @a[tag=!sourcecraft.init_ID] run tag @s add sourcecraft.init_ID

#schedule to run again in 20 ticks (1 second)
schedule function sourcecraft.3:loop/give_player_id 20t replace