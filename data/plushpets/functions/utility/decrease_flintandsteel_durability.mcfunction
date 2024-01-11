# decrease flint and steel durability

#get selected player slot
execute store result score #player_selected_slot plushpets.temp run data get entity @s SelectedItemSlot

#get durability
execute store result score #player_selected_item_durability plushpets.temp run data get entity @s SelectedItem.tag.Damage

#summon item frame
summon minecraft:item_frame ~ ~ ~ {Invisible:1b,Tags:["plushpets.item_frame","global.ignore"],Silent:1b}

#place item in item frame
data modify entity @e[tag=plushpets.item_frame,limit=1,sort=nearest] Item set from entity @s SelectedItem

#apply new durability
execute store result entity @e[tag=plushpets.item_frame,limit=1,sort=nearest] Item.tag.Damage byte 1 run scoreboard players add #player_selected_item_durability plushpets.temp 1

#replace flint and steel on player with new durability
execute if score #player_selected_slot plushpets.temp matches 0 run item replace entity @s hotbar.0 from entity @e[tag=plushpets.item_frame,limit=1,sort=nearest] container.0
execute if score #player_selected_slot plushpets.temp matches 1 run item replace entity @s hotbar.1 from entity @e[tag=plushpets.item_frame,limit=1,sort=nearest] container.0
execute if score #player_selected_slot plushpets.temp matches 2 run item replace entity @s hotbar.2 from entity @e[tag=plushpets.item_frame,limit=1,sort=nearest] container.0
execute if score #player_selected_slot plushpets.temp matches 3 run item replace entity @s hotbar.3 from entity @e[tag=plushpets.item_frame,limit=1,sort=nearest] container.0
execute if score #player_selected_slot plushpets.temp matches 4 run item replace entity @s hotbar.4 from entity @e[tag=plushpets.item_frame,limit=1,sort=nearest] container.0
execute if score #player_selected_slot plushpets.temp matches 5 run item replace entity @s hotbar.5 from entity @e[tag=plushpets.item_frame,limit=1,sort=nearest] container.0
execute if score #player_selected_slot plushpets.temp matches 6 run item replace entity @s hotbar.6 from entity @e[tag=plushpets.item_frame,limit=1,sort=nearest] container.0
execute if score #player_selected_slot plushpets.temp matches 7 run item replace entity @s hotbar.7 from entity @e[tag=plushpets.item_frame,limit=1,sort=nearest] container.0
execute if score #player_selected_slot plushpets.temp matches 8 run item replace entity @s hotbar.8 from entity @e[tag=plushpets.item_frame,limit=1,sort=nearest] container.0

#kill item frame
kill @e[tag=plushpets.item_frame,limit=1,sort=nearest]