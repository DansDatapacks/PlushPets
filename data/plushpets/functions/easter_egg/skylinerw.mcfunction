# skylinerw plush

# set plush
data modify entity @s ArmorItems[3].tag.SkullOwner set value {Id:[I;-1710441904,1315389737,-2045369322,279076938],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzM1NzI0MjdiYWFhZjNkYmZhYjczNjljYTI3MTVkZDAzYmUwZTc5ZTA5YTM5NjZmMGI5YzZkMWQ4NGQxNDJiNiJ9fX0="}]}}

# set name
data merge entity @s {CustomName:'{"text":"Skylinerw"}',CustomNameVisible:1b}

# particles
particle minecraft:firework ~ ~1.6 ~ 0.15 0.10 0.15 0.04 10

# sound
playsound minecraft:entity.allay.ambient_without_item neutral @a ~ ~ ~ 0.8 2

# found easter egg
scoreboard players set #plushpets:easter_egg_found plushpets.temp 1