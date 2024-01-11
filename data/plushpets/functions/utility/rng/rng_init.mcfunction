# reset
scoreboard players set #plushpets:rng.output plushpets.temp 0

# randomize using predicates (50%)
execute if predicate plushpets:rng/50 run scoreboard players set #plushpets:rng.output plushpets.temp -2147483648
execute if predicate plushpets:rng/50 run scoreboard players add #plushpets:rng.output plushpets.temp 1073741824
execute if predicate plushpets:rng/50 run scoreboard players add #plushpets:rng.output plushpets.temp 536870912
execute if predicate plushpets:rng/50 run scoreboard players add #plushpets:rng.output plushpets.temp 268435456
execute if predicate plushpets:rng/50 run scoreboard players add #plushpets:rng.output plushpets.temp 134217728
execute if predicate plushpets:rng/50 run scoreboard players add #plushpets:rng.output plushpets.temp 67108864
execute if predicate plushpets:rng/50 run scoreboard players add #plushpets:rng.output plushpets.temp 33554432
execute if predicate plushpets:rng/50 run scoreboard players add #plushpets:rng.output plushpets.temp 16777216
execute if predicate plushpets:rng/50 run scoreboard players add #plushpets:rng.output plushpets.temp 8388608
execute if predicate plushpets:rng/50 run scoreboard players add #plushpets:rng.output plushpets.temp 4194304
execute if predicate plushpets:rng/50 run scoreboard players add #plushpets:rng.output plushpets.temp 2097152
execute if predicate plushpets:rng/50 run scoreboard players add #plushpets:rng.output plushpets.temp 1048576
execute if predicate plushpets:rng/50 run scoreboard players add #plushpets:rng.output plushpets.temp 524288
execute if predicate plushpets:rng/50 run scoreboard players add #plushpets:rng.output plushpets.temp 262144
execute if predicate plushpets:rng/50 run scoreboard players add #plushpets:rng.output plushpets.temp 131072
execute if predicate plushpets:rng/50 run scoreboard players add #plushpets:rng.output plushpets.temp 65536
execute if predicate plushpets:rng/50 run scoreboard players add #plushpets:rng.output plushpets.temp 32768
execute if predicate plushpets:rng/50 run scoreboard players add #plushpets:rng.output plushpets.temp 16384
execute if predicate plushpets:rng/50 run scoreboard players add #plushpets:rng.output plushpets.temp 8192
execute if predicate plushpets:rng/50 run scoreboard players add #plushpets:rng.output plushpets.temp 4096
execute if predicate plushpets:rng/50 run scoreboard players add #plushpets:rng.output plushpets.temp 2048
execute if predicate plushpets:rng/50 run scoreboard players add #plushpets:rng.output plushpets.temp 1024
execute if predicate plushpets:rng/50 run scoreboard players add #plushpets:rng.output plushpets.temp 512
execute if predicate plushpets:rng/50 run scoreboard players add #plushpets:rng.output plushpets.temp 256
execute if predicate plushpets:rng/50 run scoreboard players add #plushpets:rng.output plushpets.temp 128
execute if predicate plushpets:rng/50 run scoreboard players add #plushpets:rng.output plushpets.temp 64
execute if predicate plushpets:rng/50 run scoreboard players add #plushpets:rng.output plushpets.temp 32
execute if predicate plushpets:rng/50 run scoreboard players add #plushpets:rng.output plushpets.temp 16
execute if predicate plushpets:rng/50 run scoreboard players add #plushpets:rng.output plushpets.temp 8
execute if predicate plushpets:rng/50 run scoreboard players add #plushpets:rng.output plushpets.temp 4
execute if predicate plushpets:rng/50 run scoreboard players add #plushpets:rng.output plushpets.temp 2
execute if predicate plushpets:rng/50 run scoreboard players add #plushpets:rng.output plushpets.temp 1

# output
execute if score #plushpets:rng.input plushpets.temp matches 1.. run scoreboard players operation #plushpets:rng.output plushpets.temp %= #plushpets:rng.input plushpets.temp