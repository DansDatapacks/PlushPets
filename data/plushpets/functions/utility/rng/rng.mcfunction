# generate random number
scoreboard players operation #plushpets:rng.value plushpets.temp *= #plushpets:rng.multiplier plushpets.data
scoreboard players operation #plushpets:rng.value plushpets.temp += #plushpets:rng.increment plushpets.data

# swap bits
scoreboard players operation #plushpets:rng.bit_swap plushpets.temp = #plushpets:rng.value plushpets.temp
scoreboard players operation #plushpets:rng.bit_swap plushpets.temp /= #plushpets:65536 plushpets.data
scoreboard players operation #plushpets:rng.value plushpets.temp *= #plushpets:65536 plushpets.data
scoreboard players operation #plushpets:rng.value plushpets.temp += #plushpets:rng.bit_swap plushpets.temp

# return output
scoreboard players operation #plushpets:rng.output plushpets.temp = #plushpets:rng.value plushpets.temp
execute if score #plushpets:rng.input plushpets.temp matches 1.. run scoreboard players operation #plushpets:rng.output plushpets.temp %= #plushpets:rng.input plushpets.temp