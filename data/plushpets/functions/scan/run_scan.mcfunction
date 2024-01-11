# runs scan to search for ore that can be highlighted

#if weakness lingering potion detected
execute at @s align xyz positioned ~.5 ~ ~.5 unless entity @e[type=minecraft:area_effect_cloud,distance=..1,tag=plushpets.weakness_effect] if block ~ ~ ~ #plushpets:player_heads run function plushpets:init_animate_plush

#next block
scoreboard players add @s scan.row 1

#tp
execute unless score @s scan.row matches 5.. at @s run tp ~1 ~ ~
#recursive
execute unless score @s scan.row matches 5.. at @s run function plushpets:scan/run_scan

#next layer
execute if score @s scan.row matches 5.. run scoreboard players add @s scan.layer 1
execute if score @s scan.row matches 5.. at @s run tp ~-4 ~1 ~

#kill at end of all 7 layers
execute if score @s scan.row matches 5.. if score @s scan.layer matches 5.. run kill @s

#go back to first row
execute if score @s scan.row matches 5.. run scoreboard players set @s scan.row 0

#re-run
execute unless score @s scan.layer matches 5.. at @s run function plushpets:scan/run_scan