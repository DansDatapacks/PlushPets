# detect death

#detect death
execute as @a[scores={sourcecraft.died=1..}] run function #sourcecraft:modules/on_player_death

#reset score
scoreboard players reset @a[scores={sourcecraft.died=1..}] sourcecraft.died

#schedule to run again next tick
schedule function sourcecraft.3:loop/detect_player_death 1t replace