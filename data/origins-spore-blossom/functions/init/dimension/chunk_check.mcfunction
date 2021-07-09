#> origins-spore-blossom:init/dimension/chunk_check
#
#   > Check if the chunk is already populated
#
#@within function origins-spore-blossom:init/dimension/marker_check


#
#   Teleport the marker entity to the forceloaded Phi chunk
#
execute at @s run tp @s -3000000 0 1600


#
#   Check for nearby marker remover entities
#
tag @s add self

execute at @s if entity @e[tag = o-s-b.marker_remover, tag = !self, distance = ..16] run kill @s

tag @s remove self


#
#   Reset the score of the executor in the `o-s-b.gt` objective
#
scoreboard players reset @s o-s-b.gt