#> origins-spore-blossom:marker/place/finalize
#
#   > End the place process
#
#@within function origins-spore-blossom:marker/place/**


#
#   Save the coordinates of the chunk the marker is residing in
#
execute at @e[tag = o-s-b.marker_init, limit = 1] run forceload add ~ ~


#
#   Set up dynamic ID of the spore blossom
#
scoreboard players operation @e[tag = o-s-b.marker_init, limit = 1] o-s-b.bID = @s o-s-b.pID

execute as @e[tag = o-s-b.marker_init, limit = 1] run function origins-spore-blossom:id/dynamic_network/set

execute at @e[tag = o-s-b.marker_init, limit = 1] run playsound minecraft:block.spore_blossom.place block @a ~ ~ ~

tag @e remove o-s-b.marker_init


#
#   Increment the score of the player in the `o-s-b.ns` objective
#
scoreboard players add @s o-s-b.ns 1

scoreboard players set @s o-s-b.placed 1