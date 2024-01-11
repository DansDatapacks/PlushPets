# inits thrown potion nbt tags

#check for weakness potion
execute if data entity @s {Item:{tag:{Potion:"minecraft:weakness"}}} run tag @s add plushpets.short_weakness_potion
execute if data entity @s {Item:{tag:{Potion:"minecraft:long_weakness"}}} run tag @s add plushpets.long_weakness_potion
tag @s[tag=plushpets.short_weakness_potion] add plushpets.weakness_potion
tag @s[tag=plushpets.long_weakness_potion] add plushpets.weakness_potion

#tag
tag @s add plushpets.init_thrown_potion_NBT