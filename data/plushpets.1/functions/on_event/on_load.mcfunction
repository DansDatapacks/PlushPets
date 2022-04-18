# runs every load/reload

#main variables
scoreboard objectives add scan.row dummy
scoreboard objectives add scan.layer dummy
scoreboard objectives add plushpets.rightclick minecraft.custom:minecraft.talked_to_villager

#plushpets.1 variables
scoreboard objectives add plushpets.ID dummy
scoreboard objectives add plushpets.ownerID dummy
scoreboard objectives add plushpets.loveT dummy
scoreboard objectives add plushpets.loveC dummy
scoreboard objectives add plushpets.loveID dummy
scoreboard objectives add plushpets.breedT dummy
scoreboard objectives add plushpets.hatchT dummy
scoreboard objectives add plushpets.fireT dummy

#constants
scoreboard players set #10 sourcecraft.data 10

#teams
team add NoCollision
team modify NoCollision collisionRule never

#start loops
function plushpets.1:loop/per_tick
function plushpets.1:loop/per_5_ticks