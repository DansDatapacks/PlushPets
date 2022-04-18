# inits item nbt tags

#playerhead
execute if data entity @s {Item:{id:"minecraft:player_head"}} run tag @s add plushpets.item_player_head

#check for plush item
execute if data entity @s Item.tag.plushpets.plush run tag @s add plushpets.plush_item

#tag
tag @s add plushpets.init_item_NBT