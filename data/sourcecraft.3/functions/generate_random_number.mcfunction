# generate random number (take sourcecraft.min and sourcecraft.max from executor and set executor's sourcecraft.num to a random number between them)

#if min not set, set to 1
execute unless score #RNG sourcecraft.min matches 1.. run scoreboard players set #RNG sourcecraft.min 1
#if max not set, set to 100
execute unless score #RNG sourcecraft.max matches 1.. run scoreboard players set #RNG sourcecraft.max 100

#Change (lower, upper) to (lower, range)
scoreboard players operation #RNG sourcecraft.max -= #RNG sourcecraft.min
scoreboard players add #RNG sourcecraft.max 1

#Summon two entities to work with
summon minecraft:marker ~ ~ ~ {Tags:["sourcecraft.random","global.ignore"]}
summon minecraft:marker ~ ~ ~ {Tags:["sourcecraft.random","global.ignore"]}

#Generate a 31-bit random number by randomizing each bit
scoreboard players add @e[type=minecraft:marker,tag=sourcecraft.random,sort=random,limit=1,distance=..3] sourcecraft.min 1
scoreboard players add @e[type=minecraft:marker,tag=sourcecraft.random,sort=random,limit=1,distance=..3] sourcecraft.min 2
scoreboard players add @e[type=minecraft:marker,tag=sourcecraft.random,sort=random,limit=1,distance=..3] sourcecraft.min 4
scoreboard players add @e[type=minecraft:marker,tag=sourcecraft.random,sort=random,limit=1,distance=..3] sourcecraft.min 8
scoreboard players add @e[type=minecraft:marker,tag=sourcecraft.random,sort=random,limit=1,distance=..3] sourcecraft.min 16
scoreboard players add @e[type=minecraft:marker,tag=sourcecraft.random,sort=random,limit=1,distance=..3] sourcecraft.min 32
scoreboard players add @e[type=minecraft:marker,tag=sourcecraft.random,sort=random,limit=1,distance=..3] sourcecraft.min 64
scoreboard players add @e[type=minecraft:marker,tag=sourcecraft.random,sort=random,limit=1,distance=..3] sourcecraft.min 128
scoreboard players add @e[type=minecraft:marker,tag=sourcecraft.random,sort=random,limit=1,distance=..3] sourcecraft.min 256
scoreboard players add @e[type=minecraft:marker,tag=sourcecraft.random,sort=random,limit=1,distance=..3] sourcecraft.min 512
scoreboard players add @e[type=minecraft:marker,tag=sourcecraft.random,sort=random,limit=1,distance=..3] sourcecraft.min 1024
scoreboard players add @e[type=minecraft:marker,tag=sourcecraft.random,sort=random,limit=1,distance=..3] sourcecraft.min 2048
scoreboard players add @e[type=minecraft:marker,tag=sourcecraft.random,sort=random,limit=1,distance=..3] sourcecraft.min 4096
scoreboard players add @e[type=minecraft:marker,tag=sourcecraft.random,sort=random,limit=1,distance=..3] sourcecraft.min 8192
scoreboard players add @e[type=minecraft:marker,tag=sourcecraft.random,sort=random,limit=1,distance=..3] sourcecraft.min 16384
scoreboard players add @e[type=minecraft:marker,tag=sourcecraft.random,sort=random,limit=1,distance=..3] sourcecraft.min 32768
scoreboard players add @e[type=minecraft:marker,tag=sourcecraft.random,sort=random,limit=1,distance=..3] sourcecraft.min 65536
scoreboard players add @e[type=minecraft:marker,tag=sourcecraft.random,sort=random,limit=1,distance=..3] sourcecraft.min 131072
scoreboard players add @e[type=minecraft:marker,tag=sourcecraft.random,sort=random,limit=1,distance=..3] sourcecraft.min 262144
scoreboard players add @e[type=minecraft:marker,tag=sourcecraft.random,sort=random,limit=1,distance=..3] sourcecraft.min 524288
scoreboard players add @e[type=minecraft:marker,tag=sourcecraft.random,sort=random,limit=1,distance=..3] sourcecraft.min 1048576
scoreboard players add @e[type=minecraft:marker,tag=sourcecraft.random,sort=random,limit=1,distance=..3] sourcecraft.min 2097152
scoreboard players add @e[type=minecraft:marker,tag=sourcecraft.random,sort=random,limit=1,distance=..3] sourcecraft.min 4194304
scoreboard players add @e[type=minecraft:marker,tag=sourcecraft.random,sort=random,limit=1,distance=..3] sourcecraft.min 8388608
scoreboard players add @e[type=minecraft:marker,tag=sourcecraft.random,sort=random,limit=1,distance=..3] sourcecraft.min 16777216
scoreboard players add @e[type=minecraft:marker,tag=sourcecraft.random,sort=random,limit=1,distance=..3] sourcecraft.min 33554432
scoreboard players add @e[type=minecraft:marker,tag=sourcecraft.random,sort=random,limit=1,distance=..3] sourcecraft.min 67108864
scoreboard players add @e[type=minecraft:marker,tag=sourcecraft.random,sort=random,limit=1,distance=..3] sourcecraft.min 134217728
scoreboard players add @e[type=minecraft:marker,tag=sourcecraft.random,sort=random,limit=1,distance=..3] sourcecraft.min 268435456
scoreboard players add @e[type=minecraft:marker,tag=sourcecraft.random,sort=random,limit=1,distance=..3] sourcecraft.min 536870912
scoreboard players add @e[type=minecraft:marker,tag=sourcecraft.random,sort=random,limit=1,distance=..3] sourcecraft.min 1073741824

#Transfer random number and limit to given range
scoreboard players operation #RNG sourcecraft.num = @e[type=minecraft:marker,tag=sourcecraft.random,distance=..3,limit=1] sourcecraft.min
scoreboard players operation #RNG sourcecraft.num %= #RNG sourcecraft.max
scoreboard players operation #RNG sourcecraft.num += #RNG sourcecraft.min

#Restore input2
scoreboard players operation #RNG sourcecraft.max += #RNG sourcecraft.min
scoreboard players remove #RNG sourcecraft.max 1

#kill calc Marker
kill @e[type=minecraft:marker,tag=sourcecraft.random,distance=..3]

#reset min/max
scoreboard players reset #RNG sourcecraft.min
scoreboard players reset #RNG sourcecraft.max