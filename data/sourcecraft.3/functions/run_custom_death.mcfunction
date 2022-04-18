# handle deaths executed by functions

#check if showDeathMessages gamerule is enabled
execute store result score #gamerule_enabled sourcecraft.temp run gamerule showDeathMessages

#temporarily turn off death messages
gamerule showDeathMessages false

#announce death
execute if data entity @s CustomName run execute unless score #death_reason sourcecraft.temp matches 1.. run tellraw @a [{"selector":"@s"},{"text":" died"}]

#kill executor
kill @s

#turn on showDeathMessages gamerule again if it was enabled before
execute if score #gamerule_enabled sourcecraft.temp matches 1.. run gamerule showDeathMessages true