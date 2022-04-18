# detect hotbar scroll

#check current item slot
execute as @a store result score @s sourcecraft.temp run data get entity @s SelectedItemSlot

#if their current item slot is different now, trigger hotbar scroll tag
execute as @a unless score @s sourcecraft.temp = @s sourcecraft.slot run function sourcecraft.3:check_hand/on_hotbar_scroll

#store current item slot
execute as @a run scoreboard players operation @s sourcecraft.slot = @s sourcecraft.temp

#schedule to run again next tick
schedule function sourcecraft.3:loop/detect_hotbar_scroll 1t replace