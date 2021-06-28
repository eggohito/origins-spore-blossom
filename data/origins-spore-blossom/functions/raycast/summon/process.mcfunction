#> origins-spore-blossom:raycast/summon/process
#
#   > Cast a ray that summons evocation fangs per set interval
#
#@within function origins-spore-blossom:raycast/summon/**


#
#   Hoist the ray if there's a block at its position, and/or lower the ray if there's no non-passable block beneath it
#
#   - also indicate if the ray is adjusting its height
#
scoreboard players reset #adjustingHeight o-s-b

execute store success score #adjustingHeight o-s-b if block ~ ~-1 ~ #origins-spore-blossom:player_can_pass run scoreboard players remove #root.curHeight o-s-b 1

execute store success score #adjustingHeight o-s-b unless block ~ ~ ~ #origins-spore-blossom:player_can_pass run scoreboard players add #root.curHeight o-s-b 1


#
#   Increment the `root.curDistance` and `root.curInterval` variable
#
scoreboard players add #root.curDistance o-s-b 1

scoreboard players add #root.curInterval o-s-b 1


#
#   Display a particle effect
#
particle dust 0.345 0.239 0.098 1 ~ ~ ~ 0 0 0 0.001 1 normal @a


#
#   Summon evocation fangs after reaching a certain interval
#
execute unless score #adjustingHeight o-s-b matches 1 if score #root.curInterval o-s-b >= $rootInterval o-s-b run function origins-spore-blossom:raycast/summon/entity


#
#   Position the ray lower or higher, depending if the ray has no block underneath or is inside a block
#
execute unless score #root.curHeight o-s-b <= #rootHeightY- o-s-b unless score #root.curDistance o-s-b >= #rootMaxDistance.chk o-s-b if block ~ ~-1 ~ #origins-spore-blossom:player_can_pass positioned ^ ^-1 ^ run function origins-spore-blossom:raycast/summon/process

execute unless score #root.curHeight o-s-b >= #rootHeightY+ o-s-b unless score #root.curDistance o-s-b >= #rootMaxDistance.chk o-s-b unless block ~ ~ ~ #origins-spore-blossom:player_can_pass positioned ^ ^1 ^ run function origins-spore-blossom:raycast/summon/process


#
#   Cast the ray forward until it reaches its set max distance
#
# scoreboard players set #uuidRand.range o-s-b 8

# function origins-spore-blossom:internal/uuid_rand


# execute if score #uuidRand.out o-s-b matches 0..5 unless score #root.curDistance o-s-b >= #rootMaxDistance.chk o-s-b positioned ^ ^ ^0.1 run function origins-spore-blossom:raycast/summon/process

# execute if score #uuidRand.out o-s-b matches 6 unless score #root.curDistance o-s-b >= #rootMaxDistance.chk o-s-b rotated ~24 ~ positioned ^ ^ ^0.1 run function origins-spore-blossom:raycast/summon/process

# execute if score #uuidRand.out o-s-b matches 7 unless score #root.curDistance o-s-b >= #rootMaxDistance.chk o-s-b rotated ~-24 ~ positioned ^ ^ ^0.1 run function origins-spore-blossom:raycast/summon/process


execute unless score #root.curDistance o-s-b >= #rootMaxDistance.chk o-s-b unless score #adjustingHeight o-s-b matches 1 positioned ^ ^ ^0.1 run function origins-spore-blossom:raycast/summon/process