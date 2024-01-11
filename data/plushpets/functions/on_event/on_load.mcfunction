# runs every load/reload

# main variables
scoreboard objectives add plushpets.data dummy
scoreboard objectives add plushpets.temp dummy
scoreboard objectives add plushpets.rightclick minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add scan.row dummy
scoreboard objectives add scan.layer dummy

# plushpets variables
scoreboard objectives add plushpets.ID dummy
scoreboard objectives add plushpets.ownerID dummy
scoreboard objectives add plushpets.loveT dummy
scoreboard objectives add plushpets.loveC dummy
scoreboard objectives add plushpets.loveID dummy
scoreboard objectives add plushpets.breedT dummy
scoreboard objectives add plushpets.hatchT dummy
scoreboard objectives add plushpets.fireT dummy

# constants
scoreboard players set #10 plushpets.data 10

# rng
scoreboard players set #plushpets:65536 plushpets.data 65536
scoreboard players set #plushpets:rng.multiplier plushpets.data 1664525
scoreboard players set #plushpets:rng.increment plushpets.data 1013904223

# init rng
scoreboard players set #plushpets:rng.input plushpets.temp 0
function plushpets:utility/rng/rng_init
scoreboard players operation #plushpets:rng.value plushpets.temp = #plushpets:rng.output plushpets.temp

# teams
team add NoCollision
team modify NoCollision collisionRule never

# pause loops
schedule clear plushpets:loop/per_tick
schedule clear plushpets:loop/per_5_ticks

# init loops
function plushpets:loop/per_tick
function plushpets:loop/per_5_ticks