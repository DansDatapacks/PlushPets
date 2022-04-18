# toggle no non-plush pets

#cancel command feedback
function #sourcecraft:cancel_command_feedback

#determine 
execute unless score #plushpets.option.allow_nonplush_pets sourcecraft.data matches 1 run scoreboard players set #option sourcecraft.temp 1
execute if score #plushpets.option.allow_nonplush_pets sourcecraft.data matches 1 run scoreboard players set #option sourcecraft.temp 0

#set
scoreboard players operation #plushpets.option.allow_nonplush_pets sourcecraft.data = #option sourcecraft.temp

#notify
execute if score #plushpets.option.allow_nonplush_pets sourcecraft.data matches 1 run tellraw @s [{"text":"Allow Non-Plush Pets has been ","color":"gray"},{"text":"enabled","color": "green"},{"text": ".","color": "gray"}]
execute if score #plushpets.option.allow_nonplush_pets sourcecraft.data matches 1 run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.5
execute if score #plushpets.option.allow_nonplush_pets sourcecraft.data matches 0 run tellraw @s [{"text":"Allow Non-Plush Pets has been ","color":"gray"},{"text":"disabled","color": "red"},{"text": ".","color": "gray"}]
execute if score #plushpets.option.allow_nonplush_pets sourcecraft.data matches 0 run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 1 1.5