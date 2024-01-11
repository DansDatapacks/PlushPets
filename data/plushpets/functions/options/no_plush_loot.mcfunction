# toggle no plush loot

#cancel command feedback
function plushpets:utility/cancel_command_feedback/disable

#determine 
execute unless score #plushpets:option.no_plush_loot plushpets.data matches 1 run scoreboard players set #option plushpets.temp 1
execute if score #plushpets:option.no_plush_loot plushpets.data matches 1 run scoreboard players set #option plushpets.temp 0

#set
scoreboard players operation #plushpets:option.no_plush_loot plushpets.data = #option plushpets.temp

#notify
execute if score #plushpets:option.no_plush_loot plushpets.data matches 1 run tellraw @s [{"text":"No Plush Loot has been ","color":"gray"},{"text":"enabled","color": "green"},{"text": ".","color": "gray"}]
execute if score #plushpets:option.no_plush_loot plushpets.data matches 1 run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.5
execute if score #plushpets:option.no_plush_loot plushpets.data matches 0 run tellraw @s [{"text":"No Plush Loot has been ","color":"gray"},{"text":"disabled","color": "red"},{"text": ".","color": "gray"}]
execute if score #plushpets:option.no_plush_loot plushpets.data matches 0 run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 1 1.5