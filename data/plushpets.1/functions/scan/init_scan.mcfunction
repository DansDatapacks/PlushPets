# init scan

#tag
tag @s add plushpets.landed_potion

#begin scan by spawning scan _markers
execute positioned ~-2 ~-2 ~-2 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["scan.scan_marker","scan.scan_marker_init","global.ignore"]}
execute positioned ~-2 ~-2 ~-1 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["scan.scan_marker","scan.scan_marker_init","global.ignore"]}
execute positioned ~-2 ~-2 ~ align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["scan.scan_marker","scan.scan_marker_init","global.ignore"]}
execute positioned ~-2 ~-2 ~1 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["scan.scan_marker","scan.scan_marker_init","global.ignore"]}
execute positioned ~-2 ~-2 ~2 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["scan.scan_marker","scan.scan_marker_init","global.ignore"]}

#run scan
execute as @e[type=minecraft:marker,tag=scan.scan_marker_init] run function plushpets.1:scan/run_scan

#remove init tag
tag @e[type=minecraft:marker,tag=scan.scan_marker_init] remove scan.scan_marker_init

#tag
tag @s remove plushpets.landed_potion