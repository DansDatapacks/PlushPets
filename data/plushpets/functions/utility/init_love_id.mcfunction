# gives plush pet love ID when breeding

#increase ID global variable
scoreboard players add #next_plushpets.loveID plushpets.data 1

#set player ID
scoreboard players operation @s plushpets.loveID = #next_plushpets.loveID plushpets.data