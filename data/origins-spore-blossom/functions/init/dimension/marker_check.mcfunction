#> origins-spore-blossom:init/dimension/marker_check
#
#   > Calls the `origins-spore-blossom:init/dimension/chunk_check` function to check if the forceloaded Phi chunk is already populated
#
#@within function origins-spore-blossom:init/dimension


#
#   Store the current gametime to a scoreboard
#
execute store result score #currentGameTime o-s-b run time query gametime

scoreboard players remove #currentGameTime o-s-b 20


#
#   Execute as the marker remover entities that has the same gametime value as the current gametime
#
execute as @e[tag = o-s-b.marker_remover] at @s if score @s o-s-b.gt = #currentGameTime o-s-b run function origins-spore-blossom:init/dimension/chunk_check