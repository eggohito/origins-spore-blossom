#> origins-spore-blossom:marker/chunk/save/end
#
#   > Save the current chunk coordinates
#
#@within
#   function origins-spore-blossom:marker/chunk/save
#   function origins-spore-blossom:marker/chunk/save/loop


#
#   Add a new array to the array
#
data modify storage origins-spore-blossom:internal root.saved_chunks append value {dimension: "null", x: 0, z: 0}


#
#   Save the current chunk coordinates into the new array in the array
#
execute store result storage origins-spore-blossom:internal root.saved_chunks[-1].x int 1 run scoreboard players get #curChunkX o-s-b

execute store result storage origins-spore-blossom:internal root.saved_chunks[-1].z int 1 run scoreboard players get #curChunkZ o-s-b

data modify storage origins-spore-blossom:internal root.saved_chunks[-1].dimension set from storage origins-spore-blossom:internal root.process.current_dimension