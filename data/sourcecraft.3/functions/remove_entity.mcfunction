# remove entity

#check if showDeathMessages gamerule is enabled
execute store result score #gamerule_enabled sourcecraft.temp run gamerule showDeathMessages

#temporarily turn off death messages
gamerule showDeathMessages false

#kill mob by teleporting it down
tp @s ~ -1000 ~
kill @s

#turn on showDeathMessages gamerule again if it was enabled before
execute if score #gamerule_enabled sourcecraft.temp matches 1.. run gamerule showDeathMessages true