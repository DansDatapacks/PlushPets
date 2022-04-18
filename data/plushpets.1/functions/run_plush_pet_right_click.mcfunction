# run right click on plush pet

#reset right click
scoreboard players reset #right_click sourcecraft.temp

#right click type
execute unless score #plushpets.option.no_breeding sourcecraft.data matches 1 unless score @s plushpets.loveC matches 1.. if entity @s[tag=!plushpets.in_love,tag=!plushpets.right_click_delay] as @a[tag=plushpets.right_clicker] if predicate plushpets.1:holding_feather run scoreboard players set #right_click sourcecraft.temp 1
execute if entity @s[tag=!plushpets.right_click_delay] as @a[tag=plushpets.right_clicker] if predicate plushpets.1:naming run scoreboard players set #right_click sourcecraft.temp 2
execute if entity @s[tag=!plushpets.right_click_delay,tag=!plushpets.fire_death_init] as @a[tag=plushpets.right_clicker] if predicate plushpets.1:holding_flintandsteel run scoreboard players set #right_click sourcecraft.temp 3

#breed
execute if score #right_click sourcecraft.temp matches 1 run function plushpets.1:run_plush_pet_in_love

#name
execute if score #right_click sourcecraft.temp matches 2 run function plushpets.1:run_name_plush_pet

#set on fire
execute if score #right_click sourcecraft.temp matches 3 run function plushpets.1:init_plush_entity_fire_death
execute if score #right_click sourcecraft.temp matches 3 as @a[tag=plushpets.right_clicker,limit=1,sort=nearest] run function plushpets.1:utility/decrease_flintandsteel_durability

#make sit/unsit
execute if entity @s[tag=!plushpets.right_click_delay] unless score #right_click sourcecraft.temp matches 1.. run function plushpets.1:run_sit

#remove right click delay tag
tag @s remove plushpets.right_click_delay