# damage player

#set player's max health to current calculated health they should have
function sourcecraft.3:health/current/give_attributes

#play damage sound
execute unless score #sourcecraft.api.apply_health.mute_hurt_sound sourcecraft.temp matches 1 at @s run playsound minecraft:entity.player.hurt player @a ~ ~ ~ 1 1
scoreboard players reset #sourcecraft.api.apply_health.mute_hurt_sound sourcecraft.temp