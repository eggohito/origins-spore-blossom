#> origins-spore-blossom:marker/chunk/save
#
#   > Check if the chunk is already saved
#
#@within function origins-spore-blossom:marker/place/finalize


#
#   Get the current chunk corners and dimension
#
function origins-spore-blossom:marker/chunk/get


#
#   Check if the chunk is already saved in the storage
#
scoreboard players set #isChunkSaved o-s-b 0


data modify storage origins-spore-blossom:internal root.check.chunk set from storage origins-spore-blossom:internal root.saved_chunks

execute store result score #savedChunks o-s-b run data get storage origins-spore-blossom:internal root.check.chunk

execute if score #savedChunks o-s-b matches 1.. run function origins-spore-blossom:marker/chunk/save/loop


#
#   If the current chunk is not saved, save it
#
execute if score #isChunkSaved o-s-b matches 0 run function origins-spore-blossom:marker/chunk/save/end


#
#   After-process cleanup
#
function origins-spore-blossom:marker/chunk/after-process_cleanup