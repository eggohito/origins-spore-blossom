#> origins-spore-blossom:marker/chunk/delete/current/loop
#
#   > Loop this function until it finds the matching chunk coordinate the spore blossom marker is residing in
#
#@within
#   function origins-spore-blossom:marker/chunk/delete/current
#   function origins-spore-blossom:marker/chunk/delete/current/loop


#
#   Count how many spore blossoms are in the chunk
#
function origins-spore-blossom:marker/chunk/get_blossoms


#
#   Check if the chunk coordinates matches the relative dimension, if not, ignore the chunk coordinates
#
data modify storage origins-spore-blossom:internal root.process.current_dimension_copy set from storage origins-spore-blossom:internal root.process.current_dimension

execute store success score #dimDoesntMatch o-s-b run data modify storage origins-spore-blossom:internal root.process.current_dimension_copy set from storage origins-spore-blossom:internal root.saved_chunks[-1].dimension


#
#   Compare the current chunk coordinates to the stored chunk coordinates from the array
#
execute if score #dimDoesntMatch o-s-b matches 0 store result score #chunkComparingToX o-s-b run data get storage origins-spore-blossom:internal root.saved_chunks[-1].x

execute if score #dimDoesntMatch o-s-b matches 0 store result score #chunkComparingToZ o-s-b run data get storage origins-spore-blossom:internal root.saved_chunks[-1].z

execute unless score #sporeBlossomCount o-s-b matches 1.. if score #dimDoesntMatch o-s-b matches 0 if score #curChunkX o-s-b = #chunkComparingToX o-s-b if score #curChunkZ o-s-b = #chunkComparingToZ o-s-b run data modify storage origins-spore-blossom:internal root.saved_chunks[-1].delete set value 1b


data modify storage origins-spore-blossom:internal root.process.saved_chunks prepend from storage origins-spore-blossom:internal root.saved_chunks[-1]

data remove storage origins-spore-blossom:internal root.saved_chunks[-1]


#
#   Loop this function until there's no more chunk coordinates to iterate through
#
scoreboard players remove #savedChunks o-s-b 1

execute if score #savedChunks o-s-b matches 1.. run function origins-spore-blossom:marker/chunk/delete/current/loop