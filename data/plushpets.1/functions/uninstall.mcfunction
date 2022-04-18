# uninstall pack

#main variables
scoreboard objectives remove scan.row
scoreboard objectives remove scan.layer
scoreboard objectives remove plushpets.rightclick

#plushpets.1 variables
scoreboard objectives remove plushpets.ID
scoreboard objectives remove plushpets.ownerID
scoreboard objectives remove plushpets.loveT
scoreboard objectives remove plushpets.loveC
scoreboard objectives remove plushpets.loveID
scoreboard objectives remove plushpets.breedT
scoreboard objectives remove plushpets.hatchT
scoreboard objectives remove plushpets.fireT

#constants
scoreboard players set #10 sourcecraft.data 10

#teams
team remove NoCollision

#kill
kill @e[type=minecraft:armor_stand,tag=plushpets.plush_entity]
kill @e[type=minecraft:armor_stand,tag=plushpets.weakness_effect]
kill @e[type=minecraft:armor_stand,tag=plushpets.right_click_detector]
kill @e[type=minecraft:marker,tag=raycast.ray]

#disable
datapack disable "file/PlushPets 1.18 v1.1"
datapack disable "file/PlushPets 1.18 v1.1.zip"