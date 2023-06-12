# check for easter egg name

# check for skylinerw easter egg (sheep plush being named "Skylinerw")
execute if data entity @s {ArmorItems:[{},{},{},{tag:{SkullOwner:{Id:[I;824160311,803882550,-1666328235,344214724]}}}]} if data entity @e[type=minecraft:villager,tag=plushpets.right_click_detector_found,limit=1] {CustomName:'{"text":"Skylinerw"}'} run function plushpets.1:easter_egg/skylinerw
