#> origins-spore-blossom:marker/chunk/after-process_cleanup
#
#   > Clean some residual data made from processing stuff
#
#@within function origins-spore-blossom:marker/chunk/**


scoreboard players reset #curChunkX o-s-b

scoreboard players reset #curChunkZ o-s-b

scoreboard players reset #chunkComparingToX o-s-b

scoreboard players reset #chunkComparingToZ o-s-b


data remove storage origins-spore-blossom:internal root.process