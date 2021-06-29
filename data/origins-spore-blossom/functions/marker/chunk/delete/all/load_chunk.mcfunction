#> origins-spore-blossom:marker/chunk/delete/all/load_chunk
#
#   > Cycle through all the saved chunks in the storage
#
#@within
#   function origins-spore-blossom:marker/chunk/delete/all/load_chunk
#   function origins-spore-blossom:marker/chunk/delete/all/load_chunks


#
#   Set the position of the marker entity
#
scoreboard players set #chunkDimNotMatch o-s-b 1

data modify storage origins-spore-blossom:internal root.check.dimension set from storage origins-spore-blossom:internal root.current_dimension

execute store success score #chunkDimNotMatch o-s-b run data modify storage origins-spore-blossom:internal root.check.dimension set from storage origins-spore-blossom:internal root.saved_chunks[-1].dimension


execute if score #chunkDimNotMatch o-s-b matches 0 store result entity @s Pos[0] double 16 run data get storage origins-spore-blossom:internal root.saved_chunks[-1].coordinates[0]

execute if score #chunkDimNotMatch o-s-b matches 0 store result entity @s Pos[2] double 16 run data get storage origins-spore-blossom:internal root.saved_chunks[-1].coordinates[1]


execute if score #chunkDimNotMatch o-s-b matches 1 run data modify storage origins-spore-blossom:internal root.check.saved_chunks_copy prepend from storage origins-spore-blossom:internal root.saved_chunks[-1]


#
#   Forceload chunks (unless it's already forceloaded)
#
execute store success score #chunkAlreadyForceloaded o-s-b run forceload query ~ ~

execute if score #chunkAlreadyForceloaded o-s-b matches 0 run forceload add ~ ~

data modify storage origins-spore-blossom:internal root.forceloaded_chunks append from storage origins-spore-blossom:internal root.saved_chunks[-1]

data remove storage origins-spore-blossom:internal root.saved_chunks[-1]


#
#   Loop this function until all saved chunks are forceloaded
#
scoreboard players remove #savedChunks o-s-b 1

execute if score #savedChunks o-s-b matches 1.. run function origins-spore-blossom:marker/chunk/delete/all/load_chunk

execute if score #savedChunks o-s-b matches 0 run kill @s