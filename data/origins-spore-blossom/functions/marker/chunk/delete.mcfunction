#> origins-spore-blossom:marker/chunk/delete
#
#   > Delete the chunk coordinates relative to the spore blossom marker
#
#@within function origins-spore-blossom:marker/kill


#
#   Get the dimension string, and the chunk coordinates
#
function origins-spore-blossom:marker/chunk/get


#
#   Copy the main array, and process both
#
scoreboard players set #isChunkSaved o-s-b 0


execute store result score #savedChunks o-s-b run data get storage origins-spore-blossom:internal root.saved_chunks

execute if score #savedChunks o-s-b matches 1.. run function origins-spore-blossom:marker/chunk/delete/relative/loop


#
#   Remove the chunk coordinates in the array that matches the current chunk coordinates
#
execute if score #isChunkSaved o-s-b matches 1 run function origins-spore-blossom:marker/chunk/delete/relative/end


#
#   After-process clean-up
#
function origins-spore-blossom:marker/chunk/after-process_cleanup