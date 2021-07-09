#> origins-spore-blossom:marker/dimension/get
#
#   > Get the dimension string of an entity
#
#@within function origins-spore-blossom:marker/**


#
#   Summon a piglin brute positioned somewhere usually inaccessible
#
execute positioned ~ ~-100000 ~ run summon piglin_brute


#
#   Get the value of the `Brain.memories."minecraft:home".value.dimension` NBT of the summoned piglin brute
#
execute positioned ~ ~-100000 ~ run data modify storage origins-spore-blossom:internal root.process.current_dimension set from entity @e[type = piglin_brute, limit = 1, distance = 0] Brain.memories."minecraft:home".value.dimension
