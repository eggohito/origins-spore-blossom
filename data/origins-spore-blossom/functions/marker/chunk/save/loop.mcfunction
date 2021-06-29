#> origins-spore-blossom:marker/chunk/save/loop
#
#   > Iterate through the saved chunk coordinates in the storage to check if the current chunk coordinates is already saved
#
#@within
#   function origins-spore-blossom:marker/chunk/save
#   function origins-spore-blossom:marker/chunk/save/loop


#
#   Store the chunk coordinates of the selected index to scoreboard
#
data modify storage origins-spore-blossom:internal root.check.dimension set from storage origins-spore-blossom:internal root.current_dimension

execute store success score #dimDoesntMatch o-s-b run data modify storage origins-spore-blossom:internal root.check.dimension set from storage origins-spore-blossom:internal root.check.chunk[-1].dimension


execute if score #dimDoesntMatch o-s-b matches 0 store result score #chunkComparingToX o-s-b run data get storage origins-spore-blossom:internal root.check.chunk[-1].coordinates[0]

execute if score #dimDoesntMatch o-s-b matches 0 store result score #chunkComparingToZ o-s-b run data get storage origins-spore-blossom:internal root.check.chunk[-1].coordinates[1]


data remove storage origins-spore-blossom:internal root.check.chunk[-1]


#
#   Loop this function if the chunk is not saved yet
#
scoreboard players remove #savedChunks o-s-b 1


execute if score #dimDoesntMatch o-s-b matches 0 if score #curChunkX o-s-b = #chunkComparingToX o-s-b if score #curChunkZ o-s-b = #chunkComparingToZ o-s-b run scoreboard players set #isChunkSaved o-s-b 1

execute if score #isChunkSaved o-s-b matches 0 if score #savedChunks o-s-b matches 1.. run function origins-spore-blossom:marker/chunk/save/loop