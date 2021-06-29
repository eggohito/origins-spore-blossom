#> origins-spore-blossom:marker/chunk/delete/all/load_chunks
#
#   > Delete all the stored chunk coordinates, and kill the markers in those chunks
#
#@private


#
#   Get the dimension string
#
function origins-spore-blossom:marker/dimension/get


#
#   Store the amount of saved chunks from the array in the storage into scoreboard ,then cycle through all of them  
#
execute store result score #savedChunks o-s-b run data get storage origins-spore-blossom:internal root.saved_chunks

execute if score #savedChunks o-s-b matches 1.. run function origins-spore-blossom:marker/chunk/delete/all/load_chunk


#
#   Storage cleanup
#
data remove storage origins-spore-blossom:internal root.check