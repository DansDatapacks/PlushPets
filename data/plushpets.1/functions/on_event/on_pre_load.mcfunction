# set latest version of this datapack

#set pack load status
execute unless score #plushpets load.status matches 1.. run scoreboard players set #plushpets load.status 1

#enable modules of sourcecraft
scoreboard players set #sourcecraft.module.player_ID sourcecraft.data 1