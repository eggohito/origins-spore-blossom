#> origins-spore-blossom:marker/chunk/after-process_cleanup
#
#   > Clean some residual data made from processing stuff
#
#@within function origins-spore-blossom:marker/chunk/**


scoreboard players reset #curChunkX o-s-b

scoreboard players reset #curChunkZ o-s-b

scoreboard players set #savedChunks o-s-b 0

scoreboard players set #isChunkSaved o-s-b 0

scoreboard players set #dimDoesntMatch o-s-b 1

scoreboard players reset #chunkComparingToX o-s-b

scoreboard players reset #chunkComparingToZ o-s-b


data remove storage origins-spore-blossom:internal root.check

data remove storage origins-spore-blossom:internal root.current_dimension