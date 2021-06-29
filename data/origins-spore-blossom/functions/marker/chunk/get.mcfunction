#> origins-spore-blossom:marker/chunk/get
#
#   Get the current chunk corners
#
#@within function origins-spore-blossom:marker/chunk/**


#
#   Get the dimension string
#
function origins-spore-blossom:marker/dimension/get


#
#   Get the chunk coordinates
#
execute store result score #curChunkX o-s-b run data get entity @s Pos[0] 0.0625

execute store result score #curChunkZ o-s-b run data get entity @s Pos[2] 0.0625