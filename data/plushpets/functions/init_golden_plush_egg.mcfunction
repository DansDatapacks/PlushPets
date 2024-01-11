# inits golden plush egg

#set golden egg head
data modify entity @e[type=minecraft:armor_stand,tag=plushpets.plush_egg_init,limit=1] ArmorItems[3].tag.SkullOwner set value {Id:[I;-1165485847,-104968802,-1516209898,-1373765208],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjI1NjE3NmJmM2M3OWVhZGFkZjA5NDNjNWU4NDc3NmE5NWVlYzFhNjJlM2FhYzA5ZmJhNmUzMGMzMjBmNDkwNyJ9fX0="}]}}

#generate random chance for golden plush
scoreboard players set #RNG plushpets.min 1
scoreboard players set #RNG plushpets.max 4
scoreboard players set #plushpets:rng.input plushpets.temp 100
function plushpets:utility/rng/rng
scoreboard players add #plushpets:rng.output plushpets.temp 1

#set golden plush type
execute if score #plushpets:rng.output plushpets.temp matches 1 run data modify entity @e[type=minecraft:armor_stand,tag=plushpets.plush_egg_init,limit=1] ArmorItems[3].tag.plushpets.egg_type.SkullOwner set value {Id:[I;43580496,-653373607,-1988615554,1225229480],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmM0MjUyZTMyMzI5ODUzNTM5ZjhmMWVmMWQwNTAyZGFlY2JhZTdiZTVkMzNiODU3ZjQzZTFjMjg0Y2ViNWEifX19"}]}}
execute if score #plushpets:rng.output plushpets.temp matches 2 run data modify entity @e[type=minecraft:armor_stand,tag=plushpets.plush_egg_init,limit=1] ArmorItems[3].tag.plushpets.egg_type.SkullOwner set value {Id:[I;-1800851452,-2037298155,-1924175006,-1470507145],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjVhYzAyNjg0ZGQxNDY1Mzc0Yjk0ZDhiZjQxOWQyNDYxY2VkMjRkYzFjM2I4M2I2NzNhZjVmMTIxMjAyYzkwNyJ9fX0="}]}}
execute if score #plushpets:rng.output plushpets.temp matches 3 run data modify entity @e[type=minecraft:armor_stand,tag=plushpets.plush_egg_init,limit=1] ArmorItems[3].tag.plushpets.egg_type.SkullOwner set value {Id:[I;1352407420,166412881,-1562255126,597603118],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDUyNGIwMmUyMDY0M2Y3MDVkMzczYzkzNmE4OWM1MGNiYWNmOGVlMjE4ODYzOWIyNDcxZTRjZDUyYzllMWM2NCJ9fX0="}]}}
execute if score #plushpets:rng.output plushpets.temp matches 4 run data modify entity @e[type=minecraft:armor_stand,tag=plushpets.plush_egg_init,limit=1] ArmorItems[3].tag.plushpets.egg_type.SkullOwner set value {Id:[I;-856712957,1546668395,-2072859289,-723626178],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGVkY2Q5MmIwZTIxMGNmZTk4ODkyYzQzMzRiZTQ2MmIzYjllNzI1ZGRiZDAwOWMyNzgzZmNmODhmMGZmZGM1MyJ9fX0="}]}}